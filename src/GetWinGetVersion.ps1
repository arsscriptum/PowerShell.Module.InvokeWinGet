<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜
#̷𝓍   🇵​​​​​🇴​​​​​🇼​​​​​🇪​​​​​🇷​​​​​🇸​​​​​🇭​​​​​🇪​​​​​🇱​​​​​🇱​​​​​ 🇸​​​​​🇨​​​​​🇷​​​​​🇮​​​​​🇵​​​​​🇹​​​​​ 🇧​​​​​🇾​​​​​ 🇬​​​​​🇺​​​​​🇮​​​​​🇱​​​​​🇱​​​​​🇦​​​​​🇺​​​​​🇲​​​​​🇪​​​​​🇵​​​​​🇱​​​​​🇦​​​​​🇳​​​​​🇹​​​​​🇪​​​​​.🇶​​​​​🇨​​​​​@🇬​​​​​🇲​​​​​🇦​​​​​🇮​​​​​🇱​​​​​.🇨​​​​​🇴​​​​​🇲​​​​​
#>

Function Get-WinGetVersion {
    <#
        .SYNOPSIS
        Gets the version from the Windows Package Manager.
        
        .DESCRIPTION
        By running this cmdlet, it will retrieve the version of the Windows Package Manager installed on the local system.

        .EXAMPLE
        Get-WinGetVersion
    #>

    BEGIN
    {
        [string[]] $WinGetArgs = "--version"
    }
    PROCESS
    {
        try {
            $WinGetExe = Get-WinGetExePath
            $Result = [version](& "$WinGetExe" $WinGetArgs).trimstart("v")
        }
        catch {
            $Result = [version]"0.0.0.0"
        }
    }
    END
    {
        return $Result
    }
}
