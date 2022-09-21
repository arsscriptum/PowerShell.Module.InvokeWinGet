<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   🇵​​​​​🇴​​​​​🇼​​​​​🇪​​​​​🇷​​​​​🇸​​​​​🇭​​​​​🇪​​​​​🇱​​​​​🇱​​​​​ 🇸​​​​​🇨​​​​​🇷​​​​​🇮​​​​​🇵​​​​​🇹​​​​​ 🇧​​​​​🇾​​​​​ 🇬​​​​​🇺​​​​​🇮​​​​​🇱​​​​​🇱​​​​​🇦​​​​​🇺​​​​​🇲​​​​​🇪​​​​​🇵​​​​​🇱​​​​​🇦​​​​​🇳​​​​​🇹​​​​​🇪​​​​​.🇶​​​​​🇨​​​​​@🇬​​​​​🇲​​​​​🇦​​​​​🇮​​​​​🇱​​​​​.🇨​​​​​🇴​​​​​🇲​​​​​
#̷𝓍   Module PowerShell.Module.InvokeWinGet
#̷𝓍   Function Invoke-PSWinGet
#>


Function Invoke-PSWinGet{

    <#  
        .Synopsis
           invoke the WinGet command in PowerShell and parse the command output.
    #>

    [CmdletBinding(SupportsShouldProcess)]
    param(

        [ValidateScript({
            $supported_commands = @('l','list', 'installed','s','search', 'online','u','update', 'upgrade','e','export')
            $user_entry = $_.ToLower()
            $Ok = $supported_commands.Contains($user_entry)
            if(-Not ($Ok) ){
                throw "command not supported ($user_entry). Supported Commands are 'l','list', 'installed','s','search', 'online','u','update', 'upgrade','e' and 'export'"
            }
            return $true 
        })]
        [Parameter(Mandatory=$true,Position=0)]
        [Alias('c', 'cmd')]
        [String]$Command,
        [Parameter(Mandatory=$false,Position=1)]
        [String]$Option,
        [Parameter(Mandatory=$false)]
        [switch]$HideCursor
    )


    $WinGetPackageVersionClassPath = Get-WinGetPackageVersionClassPath
    if(Test-Path $WinGetPackageVersionClassPath -PathType Leaf){
        . "$WinGetPackageVersionClassPath" 
    }

    #requires -version 5.0

    $Script:OutputHack=$False
    if($HideCursor){
        $Script:OutputHack=$True
    }
    # =================================================================
    # sanity checks : validate that dependencies are registered...
    # =================================================================
    try{
        [WinGetPackageVersion]$testver = [WinGetPackageVersion]::new("1.0.0")
        if($testver.Major -ne 1){ throw "Error with WinGetPackageVersion"}
        if((Test-Path "$(Get-WinGetExePath -Verbose:$False)") -ne $true){ throw "Error with WinGetExePath"}
    }catch{
        Write-Error "$_"
        return
    }

    # =================================================================
    # cmd type: easier when its an enum
    # =================================================================
    try{
        Add-Type -TypeDefinition @"
           public enum CmdType
           {
                invalid = 0,
                installed,
                online,
                upgradable,
                export
           }
"@
    }catch{
        Write-Verbose "Type CmdType already added"
    }


    [CmdType]$CmdType = [CmdType]::invalid
    $WinGetExe = Get-WinGetExePath

    # try my best to fix the OUTPUT from WinGet...
    $e = "$([char]27)"
    if($Script:OutputHack){
        #hide the cursor
        Write-Host "$e[?25l"  -NoNewline  
        write-host "$($e)[s" -NoNewline
        Write-Host "$e[u" -NoNewline  
    }
    ########################################
    # REGEX USEFUL FOR PARSING MY OUTPUT....
    # package info (well-formed)
    $ptrn_pkinf = "^(?<Name>[\w\(\) \. \-a-zA-Z0-9\*]{0,35})(\s+)(?<Id>[\.\-a-zA-Z0-9]{0,38})(\s+)(?<Version>[\.\-a-zA-Z0-9]{0,38})(\s+)(?<NewVersion>[\.\-a-zA-Z0-9]{0,38})"
    # package title
    $ptrn_title = "^(?<Name>Name)(\s*)(?<Id>Id)(\s*)(?<Version>Version)(\s*)(?<Available>Available)"
    # unicode garage that I experiened... may be different at your place. I filter out the trash with this.
    $poo_unicd  ="^(?<UNICODE00>[\u00C0-\u00FF]*)(\s+)(?<UNICODE01>[\u00C0-\u00FF]*)(\s*)(?<Version>[\.0-9]{0,5})(\s*)(?<LatestVersion>[\.0-9]{0,5})"
    # ascii garbage foobar
    $poo_ascii  ="^(?<ASCII00>[\x2D]*)(\s+)(?<ASCII01>[\x2D]*)(\s*)(?<ASCII02>[\x2D]*)(\s*)(?<ASCII03>[\x2D]*)"
    $winget_cmd_results = [system.collections.arraylist]::new()

    $categories = [system.collections.arraylist]::new()
    [void]$categories.Add('Name')
    [void]$categories.Add('Id')
    [void]$categories.Add('Version')
    [void]$categories.Add('Available')
    [void]$categories.Add('Source')
    switch($Command.ToLower()){


        { 'l','list', 'installed' -eq $_ }   {
            [CmdType]$CmdType = [CmdType]::installed

            # Call command AND PARSE the output
            &"$WinGetExe"  "list" "--accept-source-agreements" | out-string -stream | foreach-object{ 
                $line = "$_`n"
                # NICE TO HAVE, replace the PROGRESS characters... suck but no go with MSPOWERSHELLv5, just works with core. Fuck it.
                #$line = $line.Replace("-\\|/┤┘┴└├┌┬┐⠂-–—–-", "$e[u")
                if(($line -notmatch $poo_unicd) -and ($line -notmatch $poo_ascii) ){ 
                    if($line -match $ptrn_title) { 
                        [void]$winget_cmd_results.Add($line);  
                    }elseif($line -match $ptrn_pkinf) { 
                        [void]$winget_cmd_results.Add($line);  
                    }
                }
            }
        }

        { 's','search', 'online' -eq $_ }    {
            [CmdType]$CmdType = [CmdType]::online
            if($PSBoundParameters.ContainsKey('Option') -eq $False){ throw "Command 'search/online' requires search argument"}
            $categories = [system.collections.arraylist]::new()
            [void]$categories.Add('Name')
            [void]$categories.Add('Id')
            [void]$categories.Add('Version')
            [void]$categories.Add('Match')
            [void]$categories.Add('Source')
            $ptrn_title = "^(?<Name>Name)(\s*)(?<Id>Id)(\s*)(?<Version>Version)(\s*)(?<Match>Match)(\s*)(?<Source>Source)"
            $ptrn_pkinf = "^(?<Name>[\w\(\) \. \-a-zA-Z0-9\*]{0,35})(\s+)(?<Id>[\.\-a-zA-Z0-9]{0,38})(\s+)(?<Version>[\.\-a-zA-Z0-9]{0,38})(\s+)(?<Match>[\:\-a-zA-Z0-9 ]{0,38})(\s+)(?<Source>[a-zA-Z0-9]{0,10})"

            # Call command AND PARSE the output
            &"$WinGetExe"  "search" "$Option" "--accept-source-agreements" | out-string -stream | foreach-object{ 
                $line = "$_`n"
                # NICE TO HAVE, replace the PROGRESS characters... suck but no go with MSPOWERSHELLv5, just works with core. Fuck it.
                #$line = $line.Replace("-\\|/┤┘┴└├┌┬┐⠂-–—–-", "$e[u")
                if(($line -notmatch $poo_unicd) -and ($line -notmatch $poo_ascii) ){ 
                    if($line -match $ptrn_title) { 
                        [void]$winget_cmd_results.Add($line);  
                    }elseif($line -match $ptrn_pkinf) { 
                        [void]$winget_cmd_results.Add($line);  
                    }
                }
            }
        }


        { 'u','update', 'upgrade' -eq $_ } {
            [CmdType]$CmdType = [CmdType]::upgradable
            &"$WinGetExe"  "upgrade" "--include-unknown" "--accept-source-agreements" | out-string -stream | foreach-object{ 
                $line = "$_`n"
                # NICE TO HAVE, replace the PROGRESS characters... suck but no go with MSPOWERSHELLv5, just works with core. Fuck it.
                #$line = $line.Replace("-\\|/┤┘┴└├┌┬┐⠂-–—–-", "$e[u")
                if(($line -notmatch $poo_unicd) -and ($line -notmatch $poo_ascii) ){ 
                    if($line -match $ptrn_title) { 
                        [void]$winget_cmd_results.Add($line);  
                    }elseif($line -match $ptrn_pkinf) { 
                        [void]$winget_cmd_results.Add($line);  
                    }
                }
            }
        }

        { 'e','export' -eq $_ } {
            [CmdType]$CmdType = [CmdType]::export
            if($PSBoundParameters.ContainsKey('Option') -eq $False){ throw "Command 'export' requires file path argument"}
            $upgrade_cmd_results = [system.collections.arraylist]::new()
            # Call command AND PARSE the output
            &"$WinGetExe"  "list" "--accept-source-agreements" | out-string -stream | foreach-object{ 
                $line = "$_`n"
                # NICE TO HAVE, replace the PROGRESS characters... suck but no go with MSPOWERSHELLv5, just works with core. Fuck it.
                #$line = $line.Replace("-\\|/┤┘┴└├┌┬┐⠂-–—–-", "$e[u")
                if(($line -notmatch $poo_unicd) -and ($line -notmatch $poo_ascii) ){ 
                    if($line -match $ptrn_title) { 
                        [void]$winget_cmd_results.Add($line);  
                    }elseif($line -match $ptrn_pkinf) { 
                        [void]$winget_cmd_results.Add($line);  
                    }
                }
            }
            &"$WinGetExe"  "upgrade" "--include-unknown" "--accept-source-agreements" | out-string -stream | foreach-object{ 
                $line = "$_`n"
                # NICE TO HAVE, replace the PROGRESS characters... suck but no go with MSPOWERSHELLv5, just works with core. Fuck it.
                #$line = $line.Replace("-\\|/┤┘┴└├┌┬┐⠂-–—–-", "$e[u")
                if(($line -notmatch $poo_unicd) -and ($line -notmatch $poo_ascii) ){ 
                    if($line -match $ptrn_title) { 
                        [void]$upgrade_cmd_results.Add($line);  
                    }elseif($line -match $ptrn_pkinf) { 
                        [void]$upgrade_cmd_results.Add($line);  
                    }
                }
            }

            # MERGE HERE
        }
        
    } # switch
    
    if($Script:OutputHack){
        #restore scrolling region
        Write-Host "$e[s$($e)[r$($e)[u" -NoNewline
        #show the cursor
        Write-Host "$e[?25h" 
    }


    $software_list_res = [system.collections.arraylist]::new()
    $LatestVersion = $CmdType -eq [CmdType]::upgradable
    $software_list_res = Convert-ArrayToAppInfoObjects $winget_cmd_results $categories -LatestVersion:$LatestVersion
    
    if($CmdType -eq [CmdType]::export){
        $software_list_upgradable = [system.collections.arraylist]::new()
        $software_list_upgradable = Convert-ArrayToAppInfoObjects $upgrade_cmd_results $categories -LatestVersion:$true

        $software_list_export = [system.collections.arraylist]::new()
        $IdCheckList = $software_list_upgradable.Id
        ForEach($app in $software_list_res){
            $pkg_data = [PSCustomObject]@{
                Name            = $app.Name
                Id              = $app.Id
                Version         = $app.Version.ToString()
                UpdatedOn       = (Get-Date).GetDateTimeFormats()[33]
            }
            $appid = $app.Id
            [string]$avail_ver = "0.0.0"
            $new_version_availale = $false
            if($IdCheckList.Contains($appid)){
                $new_version_availale = $true
                $obj = $software_list_upgradable | where -Property Id -eq $appid | select -Unique | select -ExpandProperty LatestVersion
                if($obj -eq $Null){ throw "Error when merging datatables..."}
                if($($obj.GetType().Name) -eq 'WinGetPackageVersion'){
                    $avail_ver = $obj.ToString()
                }else{
                    $avail_ver = $obj
                }
            }
            $pkg_data | Add-Member -NotePropertyName NewVersionAvailable -NotePropertyValue $new_version_availale
            $pkg_data | Add-Member -NotePropertyName LatestVersion -NotePropertyValue $avail_ver

            [void]$software_list_export.Add($pkg_data)
        }

        $parsed_json = $software_list_export | ConvertTo-Json
        if(Test-Path $Option -PathType Leaf){ 
            write-host "WARNING! " -f DarkRed -n ; 
            write-host "File `"$Option`" already exists! . Overwite (y/N)" -f DarkGray -n ; 
            
            $a=Read-Host -Prompt "?" ; 
            if($a -notmatch "y") {
                write-host "Exiting on user request. " -f DarkYellow
                return $software_list_export;
            }  
        }

        $Null = New-Item -Path $Option -ItemType file -Force -ErrorAction Ignore
        Write-Verbose "✅ Writing $Option"
        Set-Content -Path $Option -Value $parsed_json -Force
        return $software_list_export;
    }
    
    return $software_list_res;

}
