<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   
#̷𝓍   Get-WinGetPakageInfo for WINDOWS POWERSHELL (v5 and +)
#̷𝓍   
#>

    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory=$false)]
        [String]$SourcePath = "$PSScriptRoot\..\exports\WinGetVersion.cs",
        [Parameter(Mandatory=$false)]
        [String]$OutputDir = "$PSScriptRoot\out",
        [Parameter(Mandatory=$false)]
        [switch]$UseTestSource
    )

function ConvertTo-Encoding ([string]$From, [string]$To){#"UTF-8" "CP866" "ASCII" "windows-1251"
    Begin{
        $encFrom = [System.Text.Encoding]::GetEncoding($from)
        $encTo = [System.Text.Encoding]::GetEncoding($to)
    }
    Process{
        if($Null -eq $_){
            Write-Host "ConvertTo-Encoding No Data specfied" -f DarkRed
        }else{
            $Text=($_).ToString()
            $bytes = $encTo.GetBytes($Text)
            $bytes = [System.Text.Encoding]::Convert($encFrom, $encTo, $bytes)
            $encTo.GetString($bytes)
        }
    }
}
function Get-BuildErrorData([string]$FilePath){

    Begin{
        $FilePath = $FilePath.Replace('\','\\')
       # Write-Host "Process-TestData => From $FilePath" -f DarkCyan
    }
    Process{
        $Pattern="^(?<Name>Add-Type: )(?<File>$FilePath)\((?<line>\d+)\,(?<col>\d+)\)\:(\s?)(?<ErrorTag>error)(\s?)(?<ErrorCode>[a-zA-Z0-9]*)(\s*)(\:\ )(?<ErrorDetails>[\.\w\s\:\']*)"
       # $Pattern
        $P2="^(\s*)(\| )(?<File>$FilePath)\((?<line>\d+)\,(?<col>\d+)\)\:(\s?)(?<ErrorTag>error)(\s?)(?<ErrorCode>[a-zA-Z0-9]*)(\s*)(\:\ )(?<ErrorDetails>[\.\w\s\:\']*)"
        if($Null -eq $_){
            throw "No Data specfied"
        }else{
            $Text=($_).ToString()
            #$Text
            if($Text -match $P2){

                $err_data = [PSCustomObject]@{
                    ErrorCol = $Matches.col
                    ErrorLine = $Matches.line
                    ErrorDetails = $Matches.ErrorDetails
                }
                $err_data
            }
        }
    }
}


function Test-Compilation{
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory=$false, position=0)]
        [String]$SourcePath = "$PSScriptRoot\..\exports\WinGetVersion.cs",
        [Parameter(Mandatory=$false, position=0)]
        [String]$OutputDir = "$PSScriptRoot\out"
    )
    [System.String]$firstEncNew="UTF-8"
    [System.String]$secondEncNew="CP866"
    $all = New-Object System.Collections.Generic.List[System.Object];
    $build_errors = New-Object System.Collections.Generic.List[System.Object];
    $stderr = New-Object System.Collections.Generic.List[System.Object];
    $stdout = New-Object System.Collections.Generic.List[System.Object]
    $OutFile = Join-Path $OutputDir (((Get-Date).GetDateTimeFormats()[44].Replace('/','-').Replace(':','-').Replace(' ','_')) + '\out.log')
    $Null = New-Item $OutFile -ItemType File -Force -ErrorAction Ignore
    $Src = Resolve-Path $SourcePath -ErrorAction ignore
    if($Src -eq $Null){ throw "Cannot resolve source file at $SourcePath"; }
    $SourcePath = $Src.Path
    cls
    Write-Host "===================================================="
    Write-Host "Compiling $SourcePath"

    $CurrentEA = $ErrorActionPreference
    $ErrorActionPreference='Continue'
    
    try{
        $Null = Add-Type -Path $SourcePath *> $OutFile
    }catch{
        
    }
    
    $Errors = Get-Content $OutFile    
    $i = 0;$Errors | % {
        if ($_ -ne $null){
            $Line=($_).ToString()
            $Line = $Line.Replace('[0m','').Replace('[91m','').Replace('[96m','').Replace('','')
            $ErrorData = $Line | Get-BuildErrorData $SourcePath
            if($Null -ne $ErrorData){
                $build_errors.Add($ErrorData)
            }
        }    
    }
    $build_errors_count  = $build_errors.Count
    Write-Host "===================================================="
    Write-Host "Detected $build_errors_count ERRORS" -f DarkRed
    $build_errors
    $i = 0
    $spath = Get-SublimeTextPath
    $build_errors | % {
        $line = $_.ErrorLine
        $ErrorDetails = $_.ErrorDetails
        $SublArg = "$SourcePath`:$line"
        Read-Host "Fix Error $i?"
        &"$spath" "$SublArg"
        Show-MessageBoxError "$ErrorDetails"
        $i++

    }
    $ErrorActionPreference=$CurrentEA
}




function Test-CompilationDll{
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory=$false)]
        [String]$SourcePath = "$PSScriptRoot\..\exports\WinGetVersion.cs",
        [Parameter(Mandatory=$false)]
        [String]$OutputDir = "$PSScriptRoot\out",
        [Parameter(Mandatory=$false)]
        [switch]$UseTestSource
    )
    $AssemblyReferences = @()
    $AssemblyReferences += 'System' 
    $AssemblyReferences += 'System.Collections'  
    $AssemblyReferences += 'System.Globalization'  
    $AssemblyReferences += 'System.Reflection'  

    $AssemblyReferences += 'System.Text.RegularExpressions'  
 

    $NewDll = New-RandomFilename -Extension 'dll'
    $CompilerOptions = '/unsafe'
    $OutputType = 'Library'
    $OutFile = Join-Path $OutputDir (((Get-Date).GetDateTimeFormats()[44].Replace('/','-').Replace(':','-').Replace(' ','_')) + '\out.log')
    $Null = New-Item $OutFile -ItemType File -Force -ErrorAction Ignore
    $Src = Resolve-Path $SourcePath -ErrorAction ignore
    if($Src -eq $Null){ throw "Cannot resolve source file at $SourcePath"; }
    $SourcePath = $Src.Path
    cls
    Write-Host "===================================================="
    Write-Host "Compiling $SourcePath"

    $CurrentEA = $ErrorActionPreference
    $ErrorActionPreference='Continue'
    [string]$RandomNS = "NameS_"
    [string]$RandomString = "Class_"
    $Rnds1 = Get-Random -Maximum 26 -Minimum 1 -Count 10
    
    $Rnds1 | % {
        $Rnds2 = Get-Random -Maximum 26 -Minimum 1
        $v1 = $Rnds2 + 65
        $v2 = $_ + 65
        $RandomNS += [char]$v1
        $RandomString += [char]$v2
    }
    $MyNameSpace = $RandomNS
    #[string](new-guid).Guid.Replace('-','').Substring(16)
    $SourceWinGetVer = Get-Content $SourcePath -Raw
    $SourceWinGetVer = $SourceWinGetVer.Replace("__CLASS_NAME_PLACEHOLDER__",$RandomString).Replace("__NAMESPACE_NAME_PLACEHOLDER__",$MyNameSpace)
     
    if($UseTestSource){
        $TestSourceCode = @"
            using System;
            using System.Collections;
            using System.Globalization;
            using System.Reflection;
            using System.Text;
            using System.Text.RegularExpressions;
            using Microsoft.Win32;
            namespace __NAMESPACE_NAME_PLACEHOLDER__
            {
                public class __CLASS_NAME_PLACEHOLDER__
                {
                        private string versionString;
                        public int Major { get; }
                        public int Minor { get; }
                        public int Patch { get; }
                        public int Build { get; }
                        public int Revision { get; }
                        public __CLASS_NAME_PLACEHOLDER__(){}
                        public __CLASS_NAME_PLACEHOLDER__(string ver){}
                        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int patch){
                            Major = major;Minor = minor;Patch = patch;
                        }
                        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int build, int patch) {
                            Major = major;Minor = minor;Patch = patch;Build=build;

                        }
                        public __CLASS_NAME_PLACEHOLDER__(int major, int minor, int build, int patch, int revision){
                            Major = major;Minor = minor;Patch = patch;Build=build;Revision=revision;    
                        }
                        public override string ToString()
                        {
                            if (versionString == null)
                            {
                                StringBuilder result = new StringBuilder();

                                result.Append(Major).Append(".").Append(Minor).Append(".").Append(Patch).Append(".").Append(Build).Append(".").Append(Revision).Append(" TEST CLASS ONLY");

                                versionString = result.ToString();
                            }

                            return versionString;
                        }
                };
            };
        

"@    
        $SourceCode = $TestSourceCode.Replace("__CLASS_NAME_PLACEHOLDER__",$RandomString).Replace("__NAMESPACE_NAME_PLACEHOLDER__",$MyNameSpace)
        

    }else{
        $SourceCode = @"
            $SourceWinGetVer
"@ 
    }

    $Result = Add-Type -TypeDefinition $SourceCode -OutputAssembly $NewDll -CompilerOptions $CompilerOptions -ReferencedAssemblies $AssemblyReferences -OutputType $OutputType -PassThru


  if(Test-Path $NewDll){
    Add-Type -LiteralPath "$NewDll" -ErrorAction Stop
    $SizeKb=(gi $NewDll).Length / 1024
    Write-Host "Wrote $NewDll ($SizeKb Kb). New Typs is $RandomString" -f Green
    $ObjName = "$MyNameSpace.$RandomString"
    $Cmd = @"


        Write-Host `"Add-Type -LiteralPath '$NewDll' -ErrorAction Stop`"
        Add-Type -LiteralPath `"$NewDll`" -ErrorAction Stop
        if (!("$ObjName" -as [type])) {
            Write-Host `"Type $ObjName NOT IMPORTED!`" -f Red
            return
        }
        try{
            Write-Host '[$ObjName]`$var = [$ObjName]::new(1,2,3)`t' -n -f DarkGray
            [$ObjName]`$var = [$ObjName]::new(1,2,3)
            Write-Host `"`$(`$var.ToString())`" -f DarkGreen
            Write-Host '[$ObjName]`$var = [$ObjName]::new(1,2,3)`t' -n -f DarkGray
            [$ObjName]`$var = [$ObjName]::new(1,2,3,4)
             Write-Host `"`$(`$var.ToString())`" -f DarkGreen
             Write-Host '[$ObjName]`$var = [$ObjName]::new(1,2,3)`t' -n -f DarkGray
            [$ObjName]`$var = [$ObjName]::new(1,2,3,4,5)
             Write-Host `"`$(`$var.ToString())`" -f DarkGreen
             Write-Host '[$ObjName]`$var = [$ObjName]::new(`"1.2.3`")`t' -n -f DarkGray
            [$ObjName]`$var = [$ObjName]::new(`"1.2.3`")
            Write-Host `"`$(`$var.ToString())`" -f DarkGreen
        }catch{
            <# `$Record = `$_
            `$formatstring = "{0}`n{1}"
            `$fields = `$Record.FullyQualifiedErrorId,`$Record.Exception.ToString()
            `$ExceptMsg=(`$formatstring -f `$fields)
            `$Stack=`$Record.ScriptStackTrace
            Write-Host "`n[ERROR] -> " -NoNewLine -ForegroundColor DarkRed; 
            Write-Host "`$ExceptMsg`n`n" -ForegroundColor DarkYellow
            Write-Host "--stack begin--" -ForegroundColor DarkGreen
            Write-Host "`$Stack" -ForegroundColor Gray  
            Write-Host "--stack end--`n" -ForegroundColor DarkGreen      
            #>
            Write-Host "Error`n" -f DarkRed
            Write-Host "Error details: " -f Gray -n
            Write-Host "`$_" -f cyan
        } 
"@
  

  [ScriptBlock]$ScriptBk = [ScriptBlock]::create($Cmd)
  Start-Job -ScriptBlock $ScriptBk | Receive-Job -AutoRemoveJob -Wait

  }

}
Test-CompilationDll -UseTestSource:$UseTestSource