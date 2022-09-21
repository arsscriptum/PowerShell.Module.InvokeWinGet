<#
  ╓──────────────────────────────────────────────────────────────────────────────────────
  ║   PowerShell PowerShell.Module.InvokeWinGet Module
  ║   Version 1.0.62 , Generated on Tuesday, 20 September, 2022 8:26 PM 
  ║   Description: 
  ║   Current Git Revision 1c48baef88ac48c20733ff4bd1db3444c0461bdd
  ╙──────────────────────────────────────────────────────────────────────────────────────
 #>


# ------------------------------------
# Script file - Aliases - 
# ------------------------------------
$ScriptBlockAliases = "H4sIAAAAAAAACqXOQQqDMBAF0L3gHQb3OYRQK26KVLDrqY42NM1IkmqP30RRKHbVbv8f3p84OtEkUiXRgjjhg2Cwk9Q9ORA1qicBFHrkO4myukidh7xqeCDIFV9RgciMYZM2TrKGotdsCMSRTUPxjl7gAd1twz0oFjd7UTk3f/IjGRuO9wv12vy84HnLnWvR4eoHvtDWoVLUVr6ccAO+2weyjZHDnCVnckbSSBYQlLQOuANPQZiZJbnayeff0RvCyJ0WugEAAA=="

# ------------------------------------
# Script file - ConvertArrayToAppInfoObjects - 
# ------------------------------------
$ScriptBlockConvertArrayToAppInfoObjects = "H4sIAAAAAAAACqVX+1PqRhT+3Rn/hzORGUNLMnAf09YpbalS61wFRlQ6Fcpdk0VSk2y6uxGt8r/3bB6QDVGuvXFGk5zn951H1t2d3eRnFoeO9FgIhyy8p1xaHc7J4wXrRNFJOGP9m7+pIwU8QXbtQa/f/WPQP79Q1urN9WHg+lT+6oWuF96awziKGJdiOGex7w44c6gQ9UmqGxFOAjO9T2wH6gWVlJtnJHSJZPyxXZM8pg2ImPBUZu1mbp1YiEchaWA7zPcxM5QLm6iUfU/ISW2BKVA5dQJ3yqmIfSkab4zWekM0h0h6y7hHt0eZEV9Q3fXCk858UjtFJ0JeUS7Q/VqOV/pQT//UBJvJBeF0qmJDe0tuBwchXZi57Uno0odTL6RoV8ERPAOM5pRTK603PJm1KVgBwQShgPK6OamD1QldeEHe+kr5uy3y9yhfYrb9WFpDyRFICjD97c3MAlKL/gO1Xuz79SeQc84WYBySULWgoOCwIMDiAItlFEtjmTfzHiQOqLBtO+POc6dCEq4oX3u3k7s+BtTRrW1wmL7Q7F3RzCdCoul2K6SikCB3vjDYB2WWYz0jD+DT8HYubTgB13ORKE8AdUiMHAkWUKTLuSO3VMCcuPD75XEXep2zrmiA791R2B/h1LOFgGHWnHBE76nPooCGEj55EiwYnfSO+qMhDI8+4dNR92ofPWM4J5YYjgaADrK+rwXkYYoJTUMcIIVlxb0FrWZJB7Nt61Rbpka8tbbHroKPJfuUZWh9SBdhIqscjSFV85WPhjW88yJooXal5BTrh9Jn+I3xLnHmq4laT3aNRFEOcGoP4xuRdLLZbBQSti+4F3RDNx/hxDAiEtdK2Db+Mn/+8fi8fzlQxfjperwYm+M6jG0YW8T6t2P92bR+GH8zeWo23n9c1o3K2Oc0Ih63sILHVPaTOViLrYylUkn2wMpyWCWTc5d7T8qi4VqBSvFV1uc1uOgvAdzDDLZiNcfi23qJHbugmeh9v8FJkvVLjKBwkw/18jUurlP0+JGIOVegESmvoibno6HNf0pOLqvkB9edoXk3kp1nXIZ3IY6UgXsPytGNlt20m2rfvcSyRlxGWOs7nbCS00reNJ1N+hKMnkgQquNHZWetuExdD9JdlH0q18yqj2GlRvoR1FIp8FdRK3JPPL+AbB/Jspv7Guf6B7teGOxXXW3UPat0Q1/gad0zWWXZ/2fR0k4vJVXd8ZrSV5au0GmSP5bIqkV3t1M8IRFVwcHwMBaSBenCnPxS0lWX2gDF53aB7nRxbdqcuPqzbuO5mxZZZYsWr/ef7qKAeIkfXmdeAjLinqTWiPAQkwADT4tC3VDOGT+Az0Zt+tko1G35hubbeyFRkld026SsFEujoq51sZ6h47rWGQ1uVCf0mKR4zI/wn4fHpEBairr8ivgxLXVYJdTre+a5E/3Ma2NUc5VFlt3q5Kbr7u4sd/4DW78wxuMMAAA="

# ------------------------------------
# Script file - GetInstalledSoftware - 
# ------------------------------------
$ScriptBlockGetInstalledSoftware = "H4sIAAAAAAAACsVVa0/bMBT9jsR/sFCkJAJX46Fp61SJUspDpQ81lGojHQqJ2xpSu3Icqijkv+/mCWkb0PZlVtXEzr3H5557r727M/WZLSln6JJIfM08abkucQw+lStLEBTu7iAY931fLn15GyyJdm8EniSLWtdi1owsCJO1pi/5wophagOj//hEbDnRJ5lra+G4RJ5R5lA20/LlpSWsBdLSSWI3iFeIJKKwSZbvLJc6liQ9Lnu+6/ZFe7GUQdnGkwKwJ0oPANJlPX0oI0bTmDok8FAD7V11brp1M4/P7FJbcA9m5hgI8pVntnwhIKY7IjyIxywA9g4K5/7F7bg5bJtjvvp6cnzU485fAWXUGEQDjHpkhQfGuaAvBOE4AHTVGSFYGgj+Qh0i0JDMKEQYIDzkXBbTev2q0/75MDLaQ2NrtPuNJKmtOXWda8hYDFxHuC0EF8006QZ1gaIbtDiTlPkEvaLxnAiC0ySiECkPtYQUhvzac6Qa2HTgt4+1+E8PDw8OTyJ4VVQUgfcFF23Lnr/5g2ajuqlogDMwEioxnP5PGUBRGiedIg0zkKIcsJ5XazzGgkqCAeORe8C+SzwPqhWpPY68vLhFLuxzLNeU+8xRU4QIERfc3uFNuSAQGNJKeyLKPiKRk1UGxlmMXpS4V4sVt8APfDQ1lkTVN1yTnCb5OHO5/QzFEqI1IYu8/A7vm/jXF/x9En6LsFZMTiJI0nFUzA+PokhRdYQt5iRgUCLQYj7R1HPqLV0rSMkgTFPkpKn0XPp8bAr0vwlvUixPlZlNE/3jY+B0C/GBJef5e6Oc1U3j903UgK5Y6yP1YyoecaE7oMGXREhKEkbvjsJ8nIasoV6Ors/VH4g0wrKQUXSAKlwSQXKXCrmiqMI5a7st/vmXat9sh2qINYNPWXStJy6qqaSfP0eh7EOU5HM1SlEJRnLNbAFat6jGym7YG24n1+UWrHWLDazsastH+Yg/favy7CgvNeQrMpLSy89nnNVgsFmTb7tk+8MDfjt/AFdxtGIzCAAA"

# ------------------------------------
# Script file - GetWinGetExePath - 
# ------------------------------------
$ScriptBlockGetWinGetExePath = "H4sIAAAAAAAACo2TwWrbQBCG7wa/wyAMkQ4ScVOKW+hBUew0aRJEbZpDHMxaGtuLpV2xu0IOoce+RZ+uT9KRFay145Qg0CLtzD//fLPb7XTpGZUiMVwKuETj33NBy3CDMTMreAaAbode8BDlaYbmnIuUi6U7LotCKqPHK1lmaaxkglp7j01swRTLXa/Wrj97FWWgIQH4uq0RyTxnIoWTZiPADZ6AP1RKqrBxcrUUUmGTzheua0n4AqF3V2YZeOCHpOIa1MYvarv+1rTTs+KDsSxVgp7TbE6eCoQbZAvPe27kLYdhUZDDV7lt3L3iBv2fqOZSIzh///yGkSzJQ9sIRLcX8NAKPjpt+g80pRJ2tWbv1x4n+r+JWbJmS3zhZf/x71hOpW95oqSWCxNcoF4bWVDMldCGZRkqZwfuiKTF7y0C15KLQ5SWRPBS6EYmrJ4WsXVaAFa/fHFsODu9VyOx/LyXdhjHEIfR9/BySOvk21voj+PfnW5rCrQcjmMfSfRlSud9SUccRjxDPaUrk8pKU6Ce/ncus37QHwQfTj/3g9PZ5tPH2WxQ4fppfpYO5vMKj2GkGbYEW0c2KnXY1t6hmqyUrMh0fU1BSANZPTW0GFKlbc+dfyRzrLYOBAAA"

# ------------------------------------
# Script file - GetWinGetVersion - 
# ------------------------------------
$ScriptBlockGetWinGetVersion = "H4sIAAAAAAAACmVPywrCMBC8F/oPIYjYQ4s/4MFHLF5qaUEPpYdSQlvQCMm2KOK/uzHRFjMJTHaZzM763r4XNXQ3QWIO4bkTSCcule48fc/3CGLD4kNintjTpFEokJ1oirIkM/NxLRtFVoSG4WAsqFG/DKXZccvy3DEC+ZiWGtaQ3Tn6jcmwTito/7QZV/0FUFjYseViTuhoQaf5gghTXxVUEhZ0oMHoZVNq1BXUrZPJnUOX0efYPSculliyc9aVHHopvnY/OV7vDaBTMIGPAQAA"

# ------------------------------------
# Script file - InvokePsWinGet - 
# ------------------------------------
$ScriptBlockInvokePsWinGet = "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"

# ------------------------------------
# Script file - RepairWinGetOutput - 
# ------------------------------------
$ScriptBlockRepairWinGetOutput = "H4sIAAAAAAAACtVUy27aQBTdR8o/XLmWbKvYCu2mi7AgkYVQg43sJFSKEAz4AiPBjDszToiifEdX/bl+ScfYBgONGiXqouPFPHwf5577OD053XyzjE0V5QwiTAkV7oCyDqowU2mm4AngAwSh/60fRte5NOh1d7lKlqguKEsom9txlqZcKBkveLZM+oJPUUpnWMimRJCVXZw3uv38ARUKu0dYQhQXjy1TiQwbkHJJcySts0p7oxErod0MTbnZG3+zNSNLiXsGKFNDc0XWoyVq228wUCFIidKyrGUYbzAiH6iaLoYmlaN7FFLH+Q4kc8GzdMS0SsvoROFNP2j3fGMnqFdxcYrNZPgwKgiEFpRUFr/ozK5hcp52RsxDBU+XyJJM0bZcq2F5Vmn82IF9pHCuFSzHuxZ0ZRebzxLbcXR5xWHPh6vwsn0Ft34Ud8MAgpvehR9BO/Kh0731A2jHYAGcQ9M785pN78vnTxZMcEoyiaAW+AhE6APnMCNC/1jo0nwJW+3mxdmkONn11y5LcB3ObAss52PTKZksuTI2kkUeDHAZglEGa9S5y9dAUIXuLYoJ1zCNXz9/DNpR0A06+gR3AueA6+FY3aQ63zm2cWVpbOhY8usO1Ngwajj2slOT2kk870rguerbPNP9+IJnLNmWm/QuOVOEMvkVH22rrHDLARe/g3mt+7IeVW6hdOuuiC5nqHriMPYDznu5MEqvVrg1rP8lwVtyX0ltOYBeotYkaZrTksvM1aLWdFfFw34WDqTdOUI14pynw0AUj3DF7zE3eqi4VavK5Q8ZbJlH/XLWOMYAW0dObTL8o+zmThfq9dnVM2kfr/OefG8n6PPJbwUCiF1IBwAA"

# ------------------------------------
# Script file - SetWinGetConfiguration - 
# ------------------------------------
$ScriptBlockSetWinGetConfiguration = "H4sIAAAAAAAACqVU224aMRB9R+IfLIsHIrHQm6oIqVIISSuqJEUil4cQJcY7Cy7GXtljaNTm3zteQyEkqlSVXa2XnTnjOWdmXK/V6WqMpFMldr96a/rWFGrKPrEjHk0/6zVGP/7Q8HIGC8G7jM8QS9/tdMRctBe+s1JmCph5QKQ3306O7e8UjLdijBig02GfrWO5lWEBBgUqaxjdOAMPbINt0Rt02d83WGfkbXASKJ91itVHEdBelblAGBgEtxR6YM6VCQiePN+uPZ8oreSPoGEB6B734uTKi4mO0dEFSIYNims7nVIiexANS9BRHnDOOr6HMYAr6+bPMDy3K6OtyMFFHNFU5BY12zoMnZ068P5SLcAGHJgRSGvyis27N5XnU4tVK1eRspColgr/iZAyHoXWxzATS0W5P4eWDgpwYGSl4Y4lKe7kTCFIDK6y3/IfHz/wuy2JtTpWimr7WxLIZFcj3mK8cFm/x9kLZy9tGX158CTNvnVNZZCSvrCptltaFbU9hkvlg9AviCVtj0Wlv6M+sJu61Wt0x4sfpbUIhpSljh1RK94o8wUwjUpwqZkpcsLe9he5BjxWJqcuaY5CWVqHfjSzQedUT9LRH9wl31I4sWgebKANWUzvC6XBxwFs8sbpxXX37Fu/d9YbDk96l73xUMi5mIIfnyvprLcFtk/Az9GWvbJcSwLu/nAF88fJ+/xwMlnB+CyKP6Khg/GfKU3jyV7Z4k/kcaI5Hq0x/wce51CIoPG1PA4S/Xr1LKwDIWfNRhSCKbOjysFO+S5glQ0QFiwbCpxRLtGDs+rb5WMJrIJndOpIWk7jUPZSBQdTQ1uwX4wGKjNB623QWFwqK9IRtR/3WugA7JWjMjs10sZSs4DFIcsof7nTijeOxiO7BjexdNLx+JfCs4cU+IGzTcsRfeq52m99101XkwUAAA=="

# ------------------------------------
# Script file - Util - 
# ------------------------------------
$ScriptBlockUtil = "H4sIAAAAAAAACn2S32uDMBDH3wX/h9AJrg8N7HVQGNgyOmgrc2x7Dfa6yWpS4jmUsv99xmiT+isvJpfvfXOf81znmPMYE8HJM+DiI+HVZysO+Qk2/ChkytTdhdTrjuz2689w//rmOq6jY4R4Wr5jKZAl8dYFxLlKCgRHKJBGkGXVMUKGQLW2lxzFMjljyPBbWejTttzwXxHXBZjoox2m2zIQacr4garcadt7BbhBSMmsdz2b01UiIUYhSwViOQW5lMBRa1vI6Vo6Dr12Vg5PFyNQS2va09Ju6pDQAjNiE7xNGSToBU3On9lKwFzyAQTXqVTu+PCsi7OQmKlimuHpzE/bGfvnjEzfnA7zedYjlcWLSPii3l99fdAKXye0NFbeOEfI4h/2Be8g1fQGJ5ZdaQafn+hAox/Buy3dNvWHKqHn7KHDM2LcsDn/4KfRQuQDAAA="

# ------------------------------------
# Script file - WinGetPackageVersion - 
# ------------------------------------
$ScriptBlockWinGetPackageVersion = "H4sIAAAAAAAACr1XXU/bMBR9R+I/XJVIJNIadRt7AVUTdGjbw8a0sfFQVchtXGpI7eI4RRPqf59j58uOk65SoQ/QXN97fK59fJweHoxilCRwQ+hnLH6g2QO6w38wTwijcApfR2y5QhxNYwzPAHB4IP+ozxGcRxGOAIGsu6TpEnMkGPcDuFpjzkmEq9wxoWLifUP3jNch8jChrvBFSuKoGf6J1wrHFc+A7HjeykU6n+P6YCI4oXeTa/ZLfZG0n6vR7EPmvud7YkGSsJgzgD5+hAH0z2kE9cFsYuegMXueETwDxyLlFHpFmkYPy0eFVz6qlQh6m05+r0EhbCxIB6kXndeIqBKbSfZ5qblCd489k0Gd0HjKWDyBy8cUxYk/vpre45mYgMfEIlscS3pH1mNRFwBJZFOPKeHy4M3lqZHlamXZSp++sBOoXBHNvqb9DEOTqUWNYtmNdbRAWwO+Zrs3VJW29BQLuwRJTffvRGurNadQFF2GNvEInbGl7E5aFAxzurrQFjL4RrJaIZrGcWD1VlvWt2cNBThQKylCn2Koz5Ir1DGDPFhgVMqVcFRKjy65bADHCS4DfRnZgZ8y5SY/pf9ufrqywU8b1L746duhwU+f4U5+eaXNT1fujV/hHk2Kpa90sqzqbaLVZbRPru7tLh1vK1f3plcX0764Go7bJGwacidrC8mmbl1fu/K35838xYzm5dmNqfhIs/qCksWIRTgzZJuPMRzA/xNyGLc51TavPqfAlL1LZ0bSf/O3u0QZdXkzLbFYsMiuTRYslafNX6aJ+BiATGUlgEmjk0TLtWUuitlz2fGakWjyCc9RGgvflkTdUocwcA1qv2gZLI9px7g6Gi3jpgiNJGPfXJdZSzNlq7tAFa/Dnvwvt2cLsiX3TMK6DvpkicRsAce/6QNlT/S4fOM7s0+FFyGBsjtYl4bJKibCPw6PgyZ6lhqOWEpF8R4pFpw9Qc/5q0XKi3H7fVDwv247UODjwUSbyXd1w1u6KFI2HQBvnQD53hcpXQDvXACF+IqULoD3LoCaQIusLoyTNgyjkZNOjA8uDFvoRaoFtJll8nFs1A0nAvdvEKdSptC7zLYYCIV1vufS1zBfSalhfgrebfur+GbbSVC/GiXs7RLdv4HaI6H1x2m2M8NBPcTxWtY0Y4SasWk6Hw52O2Ju9VoqzUm35hV7mHfTlldqrmzzsCWzLq5qAbqy6xT00rRlNwSTr5yZ/yp6UfZ58A9i4c1uKREAAA=="

# ------------------------------------
# Script file - WriteLogEntry - 
# ------------------------------------
$ScriptBlockWriteLogEntry = "H4sIAAAAAAAACq2UTW/aQBCG70j8h5HDwbQhSkhPlXyg1KRIYFumEq2iHDZ4sLcyu3R3iYOi/PfsYgwG81Wpc9kPj955djwz9VpvwSaKcgZjQRW2Bjx2mRJLeIPcrsDz3V+BH/6s18w56ISdoZ3vjT0GRJAZKhR2wCU1Us7tNQwJi4jiYuk0lFhg80l7SiUoi5+gUQS5Pi1ztyMzJak0Oo+UKa0G0BjhC2ropXY8LdQ+LLTh6XGmujzlwrGsM1L3Z5j6LEKmwIHbM0JfjjBlVE0SzeRxD7MBZZjLNPPlm/vQ9/Lt21afTu3tG6CFf8GymmUHY7ky2Ju0VTyMWXfWoetVJVxBn025mBHzAJJCiHLOmVwT7luJyJgD1jjRFWYd8R6ilCTGQGCPvhrvA47vB3jbp3jHRDD9iy8n1XF/Y5ry7GLMcSf0+t7DV41yGfD9KWBXCE3xL7ghRhezumHoh5r0EtbSsbTViF0+e9ZlKUElCCmPY5PgWR4KdEWv7ouzWs71pQQCc4FT+rpV2gwBDbZH+nn7sV7biZ13l9wJkSXI4IVihhHoMWY+yYlAZDdHghX7m4BEA5wqe3szQBarRAPYbfhUNHOzaL51HoLQ77qjUaULTb2ZGSo3WVG8hLPbrl7R3pUuzOfwDy4VtPznPzhRJfxWjwuMBV+wKK+Act+vNNPNyNj7dagnzP+KVQmwXlzveyUtAtVCrF+v3d5rH+pCeKl0BgAA"



# ------------------------------------
# Loader
# ------------------------------------
function ConvertFrom-Base64CompressedScriptBlock {

    [CmdletBinding()] param(
        [String]
        $ScriptBlock
    )

    # Take my B64 string and do a Base64 to Byte array conversion of compressed data
    $ScriptBlockCompressed = [System.Convert]::FromBase64String($ScriptBlock)

    # Then decompress script's data
    $InputStream = New-Object System.IO.MemoryStream(, $ScriptBlockCompressed)
    $GzipStream = New-Object System.IO.Compression.GzipStream $InputStream, ([System.IO.Compression.CompressionMode]::Decompress)
    $StreamReader = New-Object System.IO.StreamReader($GzipStream)
    $ScriptBlockDecompressed = $StreamReader.ReadToEnd()
    # And close the streams
    $GzipStream.Close()
    $InputStream.Close()

    $ScriptBlockDecompressed
}

$AssembliesFound = $False
$AssemblyFolder = "$PSScriptRoot\assemblies"
if(Test-Path "$AssemblyFolder" -PathType 'Container'){
    $Assembly = @( Get-ChildItem -Path "$AssemblyFolder\*.dll" -ErrorAction SilentlyContinue )    
    $AssemblyCount = $Assembly.Count
    if($AssemblyCount -gt 0 ){ $AssembliesFound = $True }
}


if($AssembliesFound){
    $FoundErrors = @(
      Foreach ($Import in @($Assembly)) {
        try {
            Add-Type -Path $Import.Fullname -ErrorAction Stop
        } catch [System.Reflection.ReflectionTypeLoadException] {
            Write-Warning "Processing $($Import.Name) Exception: $($_.Exception.Message)"
            $LoaderExceptions = $($_.Exception.LoaderExceptions) | Sort-Object -Unique
            foreach ($E in $LoaderExceptions) {
                Write-Warning "Processing $($Import.Name) LoaderExceptions: $($E.Message)"
            }
            $true
            #Write-Error -Message "StackTrace: $($_.Exception.StackTrace)"
        } catch {
            Write-Warning "Processing $($Import.Name) Exception: $($_.Exception.Message)"
            $LoaderExceptions = $($_.Exception.LoaderExceptions) | Sort-Object -Unique
            foreach ($E in $LoaderExceptions) {
                Write-Warning "Processing $($Import.Name) LoaderExceptions: $($E.Message)"
            }
            $true
            #Write-Error -Message "StackTrace: $($_.Exception.StackTrace)"
        }
      }
    )

    if ($FoundErrors.Count -gt 0) {
        $ModuleName = (Get-ChildItem $PSScriptRoot\*.psd1).BaseName
        Write-Warning "Importing module $ModuleName failed. Fix errors before continuing."
        break
    }
}

# For each scripts in the module, decompress and load it.
# Set a flag in the Script Scope so that the scripts know we are loading a module
# so he can have a specific logic
$Script:LoadingState = $True
$ScriptList = @('Aliases','ConvertArrayToAppInfoObjects','GetInstalledSoftware','GetWinGetExePath','GetWinGetVersion','InvokePsWinGet','RepairWinGetOutput','SetWinGetConfiguration','Util','WinGetPackageVersion','WriteLogEntry')
$ScriptList | ForEach-Object {
    $ScriptId = $_
     $ScriptBlock = "`$ScriptBlock$($ScriptId)" | Invoke-Expression
    $ClearScript = ConvertFrom-Base64CompressedScriptBlock -ScriptBlock $ScriptBlock
    try{
        $ClearScript | Invoke-Expression
    }catch{
        Write-Host "===============================" -f DarkGray
        Write-Host "$ClearScript" -f DarkGray
        Write-Host "===============================" -f DarkGray
        Write-Error "ERROR IN script $ScriptId . Details $_"
    }
}
$Script:LoadingState = $False



