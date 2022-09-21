<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   
#̷𝓍   Get-WinGetPakageInfo for WINDOWS POWERSHELL (v5 and +)
#̷𝓍   
#>




function Repair-WinGetOutput {  # NOEXPORT
<#  
    .Synopsis
       Repair-WinGetOutput : Gets a string and repair it.
#>

    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory=$true, position=0)]
        [String]$string,
        [Parameter(Mandatory=$false)]
        [int]$max_len=0,
        [Parameter(Mandatory=$false)]
        [String]$pattern="",
        [Parameter(Mandatory=$false)]
        [switch]$is_version,
        [Parameter(Mandatory=$false)]
        [String]$group_name="GROUPNAME"
           
    )
    $new_string = $string
    if($is_version){
        $string = $string.Replace('-','.')
        $new_string = ($string.Replace('<','').Trim().TrimEnd()) # SOME LOCAL VERSION NUMBER ARE GIVEN AS '  < 1.0.11.832' because they are too far behind
        $new_string = $new_string.Substring($new_string.IndexOf(' ')+1) 
        if("$new_String" -ne "$string"){
            Write-Verbose "❗WARNING❗ [reg ex]`tUpdating `"$string`" to `"$new_string`"" 
            $string =$new_string
        }    
    }

    if($PSBoundParameters.ContainsKey('pattern') -eq $True){
        if($string -match $pattern){
            $new_string = $Matches.$group_name
        }
        if("$new_String" -ne "$string"){
            Write-Verbose "❗WARNING❗ [reg ex]`tUpdating `"$string`" to `"$new_string`"" 
            $string =$new_string
        }
    }
    if($PSBoundParameters.ContainsKey('max_len') -eq $True){
        $appname_length = $string.Length 
        if($appname_length -ge $max_len){ 
            $toRemove = $appname_length - $max_len  
            $new_string=$string.Substring(0,($appname_length - $toRemove))
        }
        if("$new_String" -ne "$string"){
            Write-Verbose "❗WARNING❗ [lenght]`tUpdating `"$string`" to `"$new_string`" ($appname_length)" 
            $string =$new_string
        }
    }
    $string
}