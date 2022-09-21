#̷\  ===================================================================
#̷\  PowerShell Module -- PowerShell.Module.InvokeWinGet
#̷\  
#̷\  Manifest File Generated on Tuesday, 20 September, 2022 8:03 PM
#̷\  Current Git Revision c87286cfdbb5150c386aef6e85dcd20b66aa7d0a
#̷\  ===================================================================


@{


    RootModule        =  'PowerShell.Module.InvokeWinGet.psm1'

    ModuleVersion     = '1.0.55'

    GUID              = '2261245e-3509-4541-8b17-b5a9879fe89d'

    CompanyName       = 'Unknown'

    Author            = 'Guillaume Plante'

    Copyright         = '(c) 2020 Guillaume Plante. All rights reserved.'

    Description       = 'Module to Invoke WinGet and parse the output in PSOjects'

    PowerShellVersion = '5.0'

    RequiredAssemblies = @()

    # Private data to pass to the module specified in RootModule. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{
        PSData = @{
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = @('PowerShell.Module.InvokeWinGet')
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/arsscriptum/PowerShell.Module.InvokeWinGet/blob/main/COPYING'
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/arsscriptum/PowerShell.Module.InvokeWinGet'
        } # End of PSData hashtable
    } # End of PrivateData hashtable


    #̷\  ===================================================
    #̷\     ＭＯＤＵＬＥ ＥＸＰＯＲＴＥＤ ＦＵＮＣＴＩＯＮＳ
    #̷\  ===================================================

	# !NOTE! --- The following functions declaration was automatically generated by the build script. ---
	FunctionsToExport = @(

		# --- Exported Functions from GetInstalledSoftware.ps1 ---
		"Get-InstalledSoftware",

		# --- Exported Functions from GetWinGetExePath.ps1 ---
		"Get-WinGetExePath",

		# --- Exported Functions from GetWinGetVersion.ps1 ---
		"Get-WinGetVersion",

		# --- Exported Functions from InvokePsWinGet.ps1 ---
		"Function",
		"Invoke-PSWinGet",

		# --- Exported Functions from SetWinGetConfiguration.ps1 ---
		"Set-WinGetConfiguration",

		# --- Exported Functions from Util.ps1 ---
		"Function",
		"Get-WinGetPackageVersionClassPath")
	

    #̷\  ===================================================
    #̷\     ＴＨＥ ＬＩＳＴ ＯＦ ＥＸＰＯＲＴＥＤ ＡＬＩＡＳＥＳ
    #̷\  ===================================================

	# !NOTE! --- The following alias declaration was automatically generated by the build script. ---
	# List of all aliases packaged with this module

	AliasesToExport = @(
		"getsoftdata")

    #̷\  ===================================================
    #̷\     ＴＨＥ ＬＩＳＴ ＯＦ ＦＩＬＥＳ 
    #̷\ （ＩＦ ＣＯＭＰＲＥＳＳＥＤ， ＷＩＬＬ ＢＥ ＥＭＰＴＹ）
    #̷\  ===================================================

	FileList = @()

}




