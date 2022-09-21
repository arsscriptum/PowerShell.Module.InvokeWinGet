<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   
#̷𝓍   Set-WinGetConfiguration
#̷𝓍   
#>

#requires -version 5.0


$Script:JsonConfig = @"

{
    "`$schema": "https://aka.ms/winget-settings.schema.json",

    // For documentation on these settings, see: https://aka.ms/winget-settings
    "source": {
        "autoUpdateIntervalInMinutes": 1
     },
     "telemetry": {
        "disable": true
    },
    "logging": {
        "level": "error"
    },
    "network": {
       "downloader": "wininet",
       "doProgressTimeoutInSeconds": 120
   }, 
   "interactivity": {
        "disable": true
    },
    "installBehavior": {
        "preferences": {
            "architectures": ["x64"],
            "locale": [ "en-US", "fr-CA" ],
            "scope": "user",
            "disableInstallNotes": true
        }
    },
    "visual": {
        "progressBar": "retro"
    }
}


"@


function Set-WinGetConfiguration {
<#  
    .Synopsis
       Get upgradable WinGet pakages
#>

    [CmdletBinding(SupportsShouldProcess)]
    param()

    $cfg_files = @("$ENV:LOCALAPPDATA\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json", "$ENV:LOCALAPPDATA\Microsoft\WinGet\Settings\settings.json", "$ENV:LOCALAPPDATA\Microsoft\WinGet\Settings\\defaultState\settings.json")
    
    foreach($file in $cfg_files){
        New-Item -Path "$file" -ItemType file -Force -ErrorAction Ignore | out-null
        Set-Content -Path "$file" -Value $Script:JsonConfig -Encoding utf8 -force
        Write-Verbose "Written `"$file`" "
    } 
}
