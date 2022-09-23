// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

using System;
using System.Collections;
using System.Globalization;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using Microsoft.Win32;

namespace __NAMESPACE_NAME_PLACEHOLDER__
{
    public sealed class __CLASS_NAME_PLACEHOLDER__ : IComparable, IComparable<__CLASS_NAME_PLACEHOLDER__>, IEquatable<__CLASS_NAME_PLACEHOLDER__>
    {
        private const string VersionSansRegEx = @"^(?<major>\d+)(\.(?<minor>\d+))?(\.(?<patch>\d+))?(\.(?<build>\d+))*(\.(?<revision>\d+))*$";
        private const string LabelRegEx = @"^((?<preLabel>[0-9A-Za-z][0-9A-Za-z\-\.]*))?(\+(?<buildLabel>[0-9A-Za-z][0-9A-Za-z\-\.]*))?$";
        private const string LabelUnitRegEx = @"^[0-9A-Za-z][0-9A-Za-z\-\.]*$";
        private const string PreLabelPropertyName = "PSSemVerPreReleaseLabel";
        private const string BuildLabelPropertyName = "PSSemVerBuildLabel";
        private const string TypeNameForVersionWithLabel = "System.Version#IncludeLabel";

        private string versionString;

        public __CLASS_NAME_PLACEHOLDER__(string version)
        {
            var v = Parse(version);

            Major = v.Major;
            Minor = v.Minor;
            Patch = v.Patch;
            Build = v.Build;
            Revision = v.Revision;
            
        }

        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int patch)
        {
            if (major < 0) throw new Exception("invalid major");
            if (minor < 0) throw new Exception("invalid minor");
            if (patch < 0) throw new Exception("invalid patch");

            Major = major;
            Minor = minor;
            Patch = patch;
        }
        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int patch,int build)
        {
            if (major < 0) throw new Exception("invalid major");
            if (minor < 0) throw new Exception("invalid minor");
            if (patch < 0) throw new Exception("invalid patch");
            if (build < 0) throw new Exception("invalid build");
            Major = major;
            Minor = minor;
            Patch = patch;
            Build = build;
            
        }

        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int build, int patch, int revision)
        {
            if (major < 0) throw new Exception("invalid major");
            if (minor < 0) throw new Exception("invalid minor");
            if (patch < 0) throw new Exception("invalid patch");
            if (build < 0) throw new Exception("invalid build");
            if (revision < 0) throw new Exception("invalid revision");
            Major = major;
            Minor = minor;
            Patch = patch;
            Build = build;
            Revision = revision;
   
            // We presume:
            // PreReleaseLabel = null;
            // BuildLabel = null;
        }

        public __CLASS_NAME_PLACEHOLDER__(int major, int minor) : this(major, minor, 0) { }
        public __CLASS_NAME_PLACEHOLDER__(int major) : this(major, 0, 0) { }
        public __CLASS_NAME_PLACEHOLDER__(Version version)
        {
            if (version == null) throw new Exception("invalid major");
            if (version.Revision > 0) throw new Exception("invalid major");

            Major = version.Major;
            Minor = version.Minor;
            Patch = version.Build;
           
        }

        public static implicit operator Version(__CLASS_NAME_PLACEHOLDER__ semver)
        {
            var result = new Version(semver.Major, semver.Minor, semver.Patch);
            return result;
        }

        public int Major { get; }
        public int Minor { get; }
        public int Patch { get; }
        public int Build { get; }
        public int Revision { get; }

     
        public static __CLASS_NAME_PLACEHOLDER__ Parse(string version)
        {
            if (version == null) throw new Exception("invalid major");
            if (version == string.Empty) throw new Exception("invalid major");

            var r = new VersionResult();
            r.Init(true);
            TryParseVersion(version, ref r);

            return r._parsedVersion;
        }

        public static bool TryParse(string version, out __CLASS_NAME_PLACEHOLDER__ result)
        {
            if (version != null)
            {
                var r = new VersionResult();
                r.Init(false);

                if (TryParseVersion(version, ref r))
                {
                    result = r._parsedVersion;
                    return true;
                }
            }

            result = null;
            return false;
        }

        private static bool TryParseVersion(string version, ref VersionResult result)
        {
            if (version.EndsWith('-') || version.EndsWith('+') || version.EndsWith('.'))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            string versionSansLabel = null;
            var major = 0;
            var minor = 0;
            var patch = 0;
            var build = 0;
            var revision = 0;

        

            var match = Regex.Match(versionSansLabel, VersionSansRegEx);
            if (!match.Success)
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            if (!int.TryParse(match.Groups["major"].Value, out major))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            if (match.Groups["minor"].Success && !int.TryParse(match.Groups["minor"].Value, out minor))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            if (match.Groups["patch"].Success && !int.TryParse(match.Groups["patch"].Value, out patch))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            if (match.Groups["build"].Success && !int.TryParse(match.Groups["build"].Value, out build))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            if (match.Groups["revision"].Success && !int.TryParse(match.Groups["revision"].Value, out revision))
            {
                result.SetFailure(ParseFailureKind.FormatException);
                return false;
            }

            result._parsedVersion = new __CLASS_NAME_PLACEHOLDER__(major, minor, patch, build, revision);
            return true;
        }

        public override string ToString()
        {
            if (versionString == null)
            {
                StringBuilder result = new StringBuilder();

                result.Append(Major).Append(".").Append(Minor).Append(".").Append(Patch).Append(".").Append(Build).Append(".").Append(Revision);

                versionString = result.ToString();
            }

            return versionString;
        }

        public static int Compare(__CLASS_NAME_PLACEHOLDER__ versionA, __CLASS_NAME_PLACEHOLDER__ versionB)
        {
            if (versionA != null)
            {
                return versionA.CompareTo(versionB);
            }

            if (versionB != null)
            {
                return -1;
            }

            return 0;
        }

        public int CompareTo(object version)
        {
            if (version == null)
            {
                return 1;
            }

            if (!(version is __CLASS_NAME_PLACEHOLDER__ v))
            {
                throw new Exception("invalid major");
            }

            return CompareTo(v);
        }
        public int CompareTo(__CLASS_NAME_PLACEHOLDER__ value)
        {
            if (value is null)
                return 1;

            if (Major != value.Major)
                return Major > value.Major ? 1 : -1;

            if (Minor != value.Minor)
                return Minor > value.Minor ? 1 : -1;

            if (Patch != value.Patch)
                return Patch > value.Patch ? 1 : -1;
            if (Build != value.Build)
                return Build > value.Build ? 1 : -1;
            if (Revision != value.Revision)
                return Revision > value.Revision ? 1 : -1;

            return 1;
        }

        public override bool Equals(object obj)
        {
            return Equals(obj as __CLASS_NAME_PLACEHOLDER__);
        }

        public bool Equals(__CLASS_NAME_PLACEHOLDER__ other)
        {
            // SymVer 2.0 standard requires to ignore 'BuildLabel' (Build metadata).
            return other != null && (Major == other.Major) && (Minor == other.Minor) && (Patch == other.Patch) && (Build == other.Build) && (Revision == other.Revision);
                   
        }

        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }

        public static bool operator ==(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            if (v1 is null)
            {
                return v2 is null;
            }

            return v1.Equals(v2);
        }

        public static bool operator !=(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            return !(v1 == v2);
        }

        public static bool operator <(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            return (Compare(v1, v2) < 0);
        }

        public static bool operator <=(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            return (Compare(v1, v2) <= 0);
        }

        public static bool operator >(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            return (Compare(v1, v2) > 0);
        }

        public static bool operator >=(__CLASS_NAME_PLACEHOLDER__ v1, __CLASS_NAME_PLACEHOLDER__ v2)
        {
            return (Compare(v1, v2) >= 0);
        }

        internal enum ParseFailureKind
        {
            ArgumentException,
            ArgumentOutOfRangeException,
            FormatException
        }

        internal struct VersionResult
        {
            internal __CLASS_NAME_PLACEHOLDER__ _parsedVersion;
            internal ParseFailureKind _failure;
            internal string _exceptionArgument;
            internal bool _canThrow;

            internal void Init(bool canThrow)
            {
                _canThrow = canThrow;
            }

            internal void SetFailure(ParseFailureKind failure)
            {
                SetFailure(failure, string.Empty);
            }

            internal void SetFailure(ParseFailureKind failure, string argument)
            {
                _failure = failure;
                _exceptionArgument = argument;
                if (_canThrow)
                {
                    throw GetVersionParseException();
                }
            }

            internal Exception GetVersionParseException()
            {
                switch (_failure)
                {
                    case ParseFailureKind.ArgumentException:
                    {
                        throw new Exception("invalid major");
                    }
                    case ParseFailureKind.ArgumentOutOfRangeException:
                    {
                        throw new Exception("invalid major");
                    }
                    case ParseFailureKind.FormatException:
                    {
                        // Regenerate the FormatException as would be thrown by Int32.Parse()
                        try
                        {
                            Int32.Parse(_exceptionArgument, CultureInfo.InvariantCulture);
                        }
                        catch (FormatException e)
                        {
                            return e;
                        }
                        catch (OverflowException e)
                        {
                            return e;
                        }
                    }
                        break;
                }

                throw new Exception("invalid major");
            }
        }
    }
}