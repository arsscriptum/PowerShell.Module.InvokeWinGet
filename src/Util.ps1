<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   🇵​​​​​🇴​​​​​🇼​​​​​🇪​​​​​🇷​​​​​🇸​​​​​🇭​​​​​🇪​​​​​🇱​​​​​🇱​​​​​ 🇸​​​​​🇨​​​​​🇷​​​​​🇮​​​​​🇵​​​​​🇹​​​​​ 🇧​​​​​🇾​​​​​ 🇬​​​​​🇺​​​​​🇮​​​​​🇱​​​​​🇱​​​​​🇦​​​​​🇺​​​​​🇲​​​​​🇪​​​​​🇵​​​​​🇱​​​​​🇦​​​​​🇳​​​​​🇹​​​​​🇪​​​​​.🇶​​​​​🇨​​​​​@🇬​​​​​🇲​​​​​🇦​​​​​🇮​​​​​🇱​​​​​.🇨​​​​​🇴​​​​​🇲​​​​​
#̷𝓍   Module PowerShell.Module.InvokeWinGet
#̷𝓍   Function Invoke-PSWinGet
#>

function Get-WinGetModuleInformation{      # NOEXPORT

        $ModuleName = $ExecutionContext.SessionState.Module
        $ModuleScriptPath = $ScriptMyInvocation = $Script:MyInvocation.MyCommand.Path
        $ModuleScriptPath = (Get-Item "$ModuleScriptPath").DirectoryName
        $CurrentScriptName = $Script:MyInvocation.MyCommand.Name
        $ModuleInformation = @{
            Module        = $ModuleName
            ModuleScriptPath  = $ModuleScriptPath
            CurrentScriptName = $CurrentScriptName
        }
        return $ModuleInformation
}

function Get-WinGetModuleExportsPath{         # NOEXPORT
    $ModPath = (Get-WinGetModuleInformation).ModuleScriptPath
    $ExportsPath = Join-Path $ModPath 'exports'
    return $ExportsPath
}

function Get-WinGetPackageVersionClassPath{   
    $ExportsPath = Get-WinGetModuleExportsPath
    $WinGetModuleInformation = Join-Path $ExportsPath 'WinGetPackageVersion.ps1'
    return $WinGetModuleInformation
}


function Out-Banner {  # NOEXPORT
    [version]$ver = Get-WinGetVersion
    $vstr = $ver.ToString()
    Write-Host "`nInvoke-PSWinGet - PowerShell WinGet Tool" -f Blue
    Write-Host "Copyright (C) 2000-2021 Guillaume Plante" -f Gray
    Write-Host "using winget v$vstr`n" -f Gray
}
function Out-Usage{  # NOEXPORT
    Write-Host "usage: Invoke-PSWinGet  [<command>] [<options>] <-Quiet -HideCursor>`n" -f Gray
    Write-Host "The following commands are available:" -f Gray
    Write-Host "`thelp         Help" -f Gray
    Write-Host "`tl | list     Display installed packages." -f Gray
    Write-Host "`tu | upgrade  Shows and performs available upgrades" -f Gray
    Write-Host "`ts | search   Find and show basic info of packages" -f Gray
    Write-Host "`texport       Exports a list of the installed packages`n"  -f Gray
}