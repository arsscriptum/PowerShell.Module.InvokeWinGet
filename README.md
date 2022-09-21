# PowerShell.Module.InvokeWinGet

Helper module to invoke the WinGet command in PowerShell and parse the command output.

## Available Command: Invoke-PSWinGet

### Commands

'l','list', 'installed','s','search', 'online','u','update', 'upgrade','e','export'

## How To Use This Module ?

```
    import-module .\PowerShell.Module.InvokeWinGet.psm1
```

### To Install, I will refer to Microoft's Module Documentation

A this [link](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_modules?view=powershell-7.2)

## COMMANDS -- FUN STUFF :)


### Get list of installed software

#### Use this argument 'l','list', 'installed'

```
    pswinget <list|installed>
```

### Get list of software online (not installed)

#### Use this argument 's','search', 'online'

```
    pswinget <search|online> <search term>
```

### Get list of software with a new version available (upgradable)
#### Use this argument 'u','update', 'upgrade'
```
    pswinget upgrade
```

### Export list of installed software with information if theres a new version available (in a json file)
#### Use this argument 'e','export'
```
    pswinget export "PATH to File"
```

#### MORE ON EXPORT

```
    pswinget export "c:\Temp\apps.json"

    # Then later...
    $AppsInfos = Get-Content "c:\Temp\apps.json" | ConvertFrom-Json
    $AppsInfos | % { if($_.NewVersionAvailable) { 
    	Write-Host "Yo $ENV:USERNAME! " -f DarkRed -n
    	Write-Host " YUO NEED TO UPDATE $($_.Name)" -f DarkYellow 
    }}
```