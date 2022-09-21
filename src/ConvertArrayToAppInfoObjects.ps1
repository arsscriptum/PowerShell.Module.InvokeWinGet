<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   
#̷𝓍   Get-WinGetPakageInfo for WINDOWS POWERSHELL (v5 and +)
#̷𝓍   
#>




function Convert-ArrayToAppInfoObjects {        # NOEXPORT
<#  
    .Synopsis
       Repair-WinGetOutput : Gets a string and repair it.
#>

    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory=$true, position=0)]
        [system.collections.arraylist]$winget_cmd_results,
        [Parameter(Mandatory=$true, position=1)]
        [system.collections.arraylist]$categories,
        [Parameter(Mandatory=$false)]
        [switch]$LatestVersion
           
    )
    $software_list = [system.collections.arraylist]::new()
    $IndexLine = $winget_cmd_results |  Where-Object {($_ -match $categories[0]) -And ($_ -match $categories[1]) -And ($_ -match $categories[1]) -And ($_ -match $categories[2]) -And ($_ -match $categories[3]) } | Out-String
    
    if($IndexLine -eq $Null){ throw "Can parse command output"}

    # Indexes...
    $id_start = $IndexLine.IndexOf($categories[1])
    $id_verstart = $IndexLine.IndexOf($categories[2])
    $id_lastver = $IndexLine.IndexOf($categories[3])
    $id_srcstart = $IndexLine.IndexOf($categories[4])

    # Max lenght. I did this ecause some packages had HUGE NAMEs, like 'Windows Software Development Kit - WINDOWS SDK - DEV' so I cut them down
    $max_len_name = $id_start - 10
    $max_len_id =  $id_verstart-($id_verstart - $id_start) - 5
    $max_len_ver =  14


    $winget_cmd_results | Select-Object -Skip 1   | Select-Object -SkipLast 1 | ForEach-Object {
        $appname = $_.Substring(0, $id_start).TrimEnd()
        $pattern="^(?<GROUPNAME>[\w\(\) \. \-a-zA-Z0-9\*]{0,35})"
        $appname = Repair-WinGetOutput $appname -max_len $max_len_name # -pattern $pattern

        $appid = $_.Substring($id_start, $id_verstart - $id_start).TrimEnd()
        $pattern = "^(?<Name>[\w\(\) \. \-a-zA-Z0-9\*]{0,35})(\s+)(?<GROUPNAME>[\.\-a-zA-Z0-9]{0,38})"
        $appid = Repair-WinGetOutput $appid -max_len $max_len_id -pattern $pattern

        [string]$curr_ver_str = $_.Substring($id_verstart, $id_lastver - $id_verstart).TrimEnd()
        if("$curr_ver_str" -eq "Unknown"){  $curr_ver_str = "1.0.0"}
        $pattern = "^(?<GROUPNAME>[\.0-9]{0,17})"
        $curr_ver_str = Repair-WinGetOutput $curr_ver_str -max_len $max_len_ver -is_version # -pattern $pattern
        [WinGetPackageVersion]$curr_ver = [WinGetPackageVersion]::new($curr_ver_str)
        
        [string]$avail_ver_str = '0.0.0'
        if($LatestVersion){
            [string]$avail_ver_str = $_.Substring($id_lastver, $id_srcstart - $id_lastver).TrimEnd()
            $pattern = "^(?<GROUPNAME>[\.0-9]{0,17})"
            $avail_ver_str = Repair-WinGetOutput $avail_ver_str -max_len $max_len_ver -is_version # -pattern $pattern
        }
        try{
            $pkg_data = [PSCustomObject]@{
                Name            = [string]$appname
                Id              = [string]$appid
                Version         = [WinGetPackageVersion]$curr_ver
            }
        }catch{
            Write-Warning "Parsing error: `"$_`""
        }
        if($LatestVersion){
            #[WinGetPackageVersion]$avail_ver = [WinGetPackageVersion]::new($avail_ver_str)
            $pkg_data | Add-Member -NotePropertyName LatestVersion -NotePropertyValue $avail_ver_str
        }
        [void]$software_list.Add($pkg_data)
    }

    $software_list
}