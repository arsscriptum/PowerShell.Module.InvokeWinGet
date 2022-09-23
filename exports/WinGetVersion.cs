// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
using System;
using System.Collections;
using System.Globalization;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;

using Microsoft.Win32;

    /// <summary>
    /// An implementation of semantic versioning (https://semver.org)
    /// that can be converted to/from <see cref="System.Version"/>.
    ///
    /// When converting to <see cref="Version"/>, a PSNoteProperty is
    /// added to the instance to store the semantic version label so
    /// that it can be recovered when creating a new WinGetPkgVersion.
    /// </summary>
    public sealed class WinGetPkgVersion : IComparable, IComparable<WinGetPkgVersion>, IEquatable<WinGetPkgVersion>
    {
        private const string VersionSansRegEx = @"^(?<major>\d+)(\.(?<minor>\d+))?(\.(?<patch>\d+))?(\.(?<build>\d+))*(\.(?<revision>\d+))*$";
        private const string LabelRegEx = @"^((?<preLabel>[0-9A-Za-z][0-9A-Za-z\-\.]*))?(\+(?<buildLabel>[0-9A-Za-z][0-9A-Za-z\-\.]*))?$";
        private const string LabelUnitRegEx = @"^[0-9A-Za-z][0-9A-Za-z\-\.]*$";
        private const string PreLabelPropertyName = "PSSemVerPreReleaseLabel";
        private const string BuildLabelPropertyName = "PSSemVerBuildLabel";
        private const string TypeNameForVersionWithLabel = "System.Version#IncludeLabel";

        private string versionString;

        /// <summary>
        /// Construct a WinGetPkgVersion from a string.
        /// </summary>
        /// <param name="version">The version to parse.</param>
        /// <exception cref="FormatException"></exception>
        /// <exception cref="OverflowException"></exception>
        public WinGetPkgVersion(string version)
        {
            var v = WinGetPkgVersion.Parse(version);

            Major = v.Major;
            Minor = v.Minor;
            Patch = v.Patch;
            Build = v.Build;
            Revision = v.Revision;
            
        }

        /// <summary>
        /// Construct a WinGetPkgVersion.
        /// </summary>
        /// <param name="major">The major version.</param>
        /// <param name="minor">The minor version.</param>
        /// <param name="patch">The patch version.</param>
        /// <param name="preReleaseLabel">The pre-release label for the version.</param>
        /// <param name="buildLabel">The build metadata for the version.</param>
        /// <exception cref="FormatException">
        /// If <paramref name="preReleaseLabel"/> don't match 'LabelUnitRegEx'.
        /// If <paramref name="buildLabel"/> don't match 'LabelUnitRegEx'.
        /// </exception>
        public WinGetPkgVersion(int major, int minor, int patch,int build, int revision)
            : this(major, minor, patch)
        {

        }

        /// <summary>
        /// Construct a WinGetPkgVersion.
        /// </summary>
        /// <param name="major">The major version.</param>
        /// <param name="minor">The minor version.</param>
        /// <param name="patch">The minor version.</param>
        /// <param name="label">The label for the version.</param>
        /// <exception cref="PSArgumentException">
        /// <exception cref="FormatException">
        /// If <paramref name="label"/> don't match 'LabelRegEx'.
        /// </exception>
        public WinGetPkgVersion(int major, int minor, int patch, int build, int revision)
            : this(major, minor, patch)
        {
            // We presume the SymVer :
            // 1) major.minor.patch-label
            // 2) 'label' starts with letter or digit.
            if (!string.IsNullOrEmpty(label))
            {
                var match = Regex.Match(label, LabelRegEx);
                if (!match.Success) throw new FormatException(nameof(label));

                Build = match.Groups["build"].Value;
                Revision = match.Groups["revision"].Value;
            }
        }

        /// <summary>
        /// Construct a WinGetPkgVersion.
        /// </summary>
        /// <param name="major">The major version.</param>
        /// <param name="minor">The minor version.</param>
        /// <param name="patch">The minor version.</param>
        /// <exception cref="PSArgumentException">
        /// If <paramref name="major"/>, <paramref name="minor"/>, or <paramref name="patch"/> is less than 0.
        /// </exception>
        public WinGetPkgVersion(int major, int minor, int build, int patch, int revision)
        {
            if (major < 0) throw new Exception("invalid major");
            if (minor < 0) throw new Exception("invalid minor");
            if (patch < 0) throw new Exception("invalid patch");

            Major = major;
            Minor = minor;
            Patch = patch;
            Build = build;
            Revision = revision;
   
            // We presume:
            // PreReleaseLabel = null;
            // BuildLabel = null;
        }

        /// <summary>
        /// Construct a WinGetPkgVersion.
        /// </summary>
        /// <param name="major">The major version.</param>
        /// <param name="minor">The minor version.</param>
        /// <exception cref="PSArgumentException">
        /// If <paramref name="major"/> or <paramref name="minor"/> is less than 0.
        /// </exception>
        public WinGetPkgVersion(int major, int minor) : this(major, minor, 0) { }

        /// <summary>
        /// Construct a WinGetPkgVersion.
        /// </summary>
        /// <param name="major">The major version.</param>
        /// <exception cref="PSArgumentException">
        /// If <paramref name="major"/> is less than 0.
        /// </exception>
        public WinGetPkgVersion(int major) : this(major, 0, 0) { }

        /// <summary>
        /// Construct a <see cref="WinGetPkgVersion"/> from a <see cref="Version"/>,
        /// copying the NoteProperty storing the label if the expected property exists.
        /// </summary>
        /// <param name="version">The version.</param>
        /// <exception cref="ArgumentNullException">
        /// If <paramref name="version"/> is null.
        /// </exception>
        /// <exception cref="PSArgumentException">
        /// If <paramref name="version.Revision"/> is more than 0.
        /// </exception>
        public WinGetPkgVersion(Version version)
        {
            if (version == null) throw new Exception("invalid major");
            if (version.Revision > 0) throw new Exception("invalid major");

            Major = version.Major;
            Minor = version.Minor;
            Patch = version.Build 
           
        }

        /// <summary>
        /// Convert a <see cref="WinGetPkgVersion"/> to a <see cref="Version"/>.
        /// If there is a <see cref="PreReleaseLabel"/> or/and a <see cref="BuildLabel"/>,
        /// it is added as a NoteProperty to the result so that you can round trip
        /// back to a <see cref="WinGetPkgVersion"/> without losing the label.
        /// </summary>
        /// <param name="semver"></param>
        public static implicit operator Version(WinGetPkgVersion semver)
        {
          

            var result = new Version(semver.Major, semver.Minor, semver.Patch);

        
            return result;
        }

        /// <summary>
        /// The major version number, never negative.
        /// </summary>
        public int Major { get; }

        /// <summary>
        /// The minor version number, never negative.
        /// </summary>
        public int Minor { get; }

        /// <summary>
        /// The patch version, -1 if not specified.
        /// </summary>
        public int Patch { get; }

        /// <summary>
        /// PreReleaseLabel position in the SymVer string 'major.minor.patch-PreReleaseLabel+BuildLabel'.
        /// </summary>
        public int Build { get; }
        //public string PreReleaseLabel { get; }

        public int Revision { get; }
        /// <summary>
        /// BuildLabel position in the SymVer string 'major.minor.patch-PreReleaseLabel+BuildLabel'.
        /// </summary>
        //public string BuildLabel { get; }

        /// <summary>
        /// Parse <paramref name="version"/> and return the result if it is a valid <see cref="WinGetPkgVersion"/>, otherwise throws an exception.
        /// </summary>
        /// <param name="version">The string to parse.</param>
        /// <returns></returns>
        /// <exception cref="PSArgumentException"></exception>
        /// <exception cref="FormatException"></exception>
        /// <exception cref="OverflowException"></exception>
        public static WinGetPkgVersion Parse(string version)
        {
            if (version == null) throw new Exception("invalid major");
            if (version == string.Empty) throw new Exception("invalid major");

            var r = new VersionResult();
            r.Init(true);
            TryParseVersion(version, ref r);

            return r._parsedVersion;
        }

        /// <summary>
        /// Parse <paramref name="version"/> and return true if it is a valid <see cref="WinGetPkgVersion"/>, otherwise return false.
        /// No exceptions are raised.
        /// </summary>
        /// <param name="version">The string to parse.</param>
        /// <param name="result">The return value when the string is a valid <see cref="WinGetPkgVersion"/></param>
        public static bool TryParse(string version, out WinGetPkgVersion result)
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

            result._parsedVersion = new WinGetPkgVersion(major, minor, patch, build, revision);
            return true;
        }

        /// <summary>
        /// Implement ToString()
        /// </summary>
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

        /// <summary>
        /// Implement Compare.
        /// </summary>
        public static int Compare(WinGetPkgVersion versionA, WinGetPkgVersion versionB)
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

        /// <summary>
        /// Implement <see cref="IComparable.CompareTo"/>
        /// </summary>
        public int CompareTo(object version)
        {
            if (version == null)
            {
                return 1;
            }

            if (!(version is WinGetPkgVersion v))
            {
                throw new Exception("invalid major");
            }

            return CompareTo(v);
        }

        /// <summary>
        /// Implement <see cref="IComparable{T}.CompareTo"/>.
        /// Meets SymVer 2.0 p.11 https://semver.org/
        /// </summary>
        public int CompareTo(WinGetPkgVersion value)
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

        /// <summary>
        /// Override <see cref="object.Equals(object)"/>
        /// </summary>
        public override bool Equals(object obj)
        {
            return Equals(obj as WinGetPkgVersion);
        }

        /// <summary>
        /// Implement <see cref="IEquatable{T}.Equals(T)"/>
        /// </summary>
        public bool Equals(WinGetPkgVersion other)
        {
            // SymVer 2.0 standard requires to ignore 'BuildLabel' (Build metadata).
            return other != null && (Major == other.Major) && (Minor == other.Minor) && (Patch == other.Patch) && (Build == other.Build) && (Revision == other.Revision);
                   
        }

        /// <summary>
        /// Override <see cref="object.GetHashCode()"/>
        /// </summary>
        public override int GetHashCode()
        {
            return this.ToString().GetHashCode();
        }

        /// <summary>
        /// Overloaded == operator.
        /// </summary>
        public static bool operator ==(WinGetPkgVersion v1, WinGetPkgVersion v2)
        {
            if (v1 is null)
            {
                return v2 is null;
            }

            return v1.Equals(v2);
        }

        /// <summary>
        /// Overloaded != operator.
        /// </summary>
        public static bool operator !=(WinGetPkgVersion v1, WinGetPkgVersion v2)
        {
            return !(v1 == v2);
        }

        /// <summary>
        /// Overloaded &lt; operator.
        /// </summary>
        public static bool operator <(WinGetPkgVersion v1, WinGetPkgVersion v2)
        {
            return (Compare(v1, v2) < 0);
        }

        /// <summary>
        /// Overloaded &lt;= operator.
        /// </summary>
        public static bool operator <=(WinGetPkgVersion v1, WinGetPkgVersion v2)
        {
            return (Compare(v1, v2) <= 0);
        }

        /// <summary>
        /// Overloaded &gt; operator.
        /// </summary>
        public static bool operator >(WinGetPkgVersion v1, WinGetPkgVersion v2)
        {
            return (Compare(v1, v2) > 0);
        }

        /// <summary>
        /// Overloaded &gt;= operator.
        /// </summary>
        public static bool operator >=(WinGetPkgVersion v1, WinGetPkgVersion v2)
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
            internal WinGetPkgVersion _parsedVersion;
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
