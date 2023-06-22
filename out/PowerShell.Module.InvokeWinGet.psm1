<#
  ╓──────────────────────────────────────────────────────────────────────────────────────
  ║   PowerShell PowerShell.Module.InvokeWinGet Module
  ║   Version 1.0.87 , Generated on Thu, 22 Jun 2023 15:17:48 GMT 
  ║   Description: Module to Invoke WinGet and parse the output in PSOjects
  ║   Current Git Revision 91542a8aa9fde1d437d223fbf2fab84edef2007f
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
$ScriptBlockGetInstalledSoftware = "H4sIAAAAAAAACsVVa0/bMBT9jsR/sFCkJAJX46Fp61SJUspDpQ81lGojHQqJ2xpSu3Icqijkv+/mCWkb0PZlVtXEzr3H5557r727M/WZLSln6JJIfM08abkucQw+lStLkHB3B8G47/ty6cvbYEm0eyPwJFnUuhazZmRBmKw1fckXVoxSGxj9xydiy4k+yVxbC8cl8owyh7KZli8vLWEtkJZOErtBvEIkEYVNsnxnudSxJOlx2fNdty/ai6UMyjaeFIA9UXoAkC7r6UMZMZqG1CGBhxpo76pz062beXhml9qCezAzx0CQrzyz5QsBMd0R4UE8ZgGwd1A49y9ux81h2xzz1deT46Med/4KKKPGIBpg1CMrPDDOBX0hCMcBoKvOCMHSQPAX6hCBhmRGIcIA4SHnspjW61ed9s+HkdEeGluj3W8kOW3NqetcQ8Zi4DrCbSG4aKY5N6gLFN2gxZmkzCfoFY3nRBCcJhGFSHmoJaQw5NeeI9XApgO/fazFf3p4eHB4EsGroqIIvC+4aFv2/M0fNBvVTUUDnIGRUInh9H/KAIrSOOkUaZiBFOWAdZRVazzGgkqCAeORe8C+SzwPqhWpPY68bGskcmGfY7mm3GeOmiJEiLjg9g5vygWBwJBW2hNR9hGJnKwyMM5i9KLEvVqsuAV+4KOpsSSqvuGa5DTJx5nL7WcolhCtCVnk5Xd438S/vuDvk/BbhLVichJBko6jYn54FEWKqiNsMScBgxKBFvOJpp5Tb+laQUoGYZoiJ02l59LnY1Og/014k2J5qsxsmugfHwOnW4gPLDnP3xvlrG4av2+iBnTFWh+pH1PxiAvdAQ2+JEJSkjB6dxTm4zRkDfVydH2u/kCkEZaFjKIDVOGSCJK7VMgVRRXOWdtt8c+/VPtmO1RDrBl8yqJrPXFRTSX9/DkKZR+iJJ+rUYpKMJJrZgvQukU1VnbB3nA7uS63YK1bbGBlV1s+ykf86VuVZ0d5qSFfkZGUXn4+46wGg82afNsl2x8e8Nv5A4YJaKUyCAAA"

# ------------------------------------
# Script file - GetWinGetExePath - 
# ------------------------------------
$ScriptBlockGetWinGetExePath = "H4sIAAAAAAAACo2TwWrbQBCG7wa/wyAMkQ4ScVuKG+hBVZw0bRJEbZJDHMxaGtmLpV2xu0IOoce8RZ6uT9JRFKy145Qi0CLtzD//fLPb7/XpySqRGC4FnKPxb7mgZbzBmJnVIwD0e/SCu6hIczTfuEi5WLqTqiylMnqyklWexkomqLV338aWTLHC9Rrp5nNQUwYaEoCvLyUiWRRMpHDUbgS4wSPwx0pJFbZGLpZCKmzTeea6loQvEAbXVZ6DB35IKq5BbfyS3ILfeAZnYMUHE1mpBD2n3Zw+lAiXyDLPe2zlLYdhWZLDN7ld3K3iBv0bVAupEZw/z09wJivy0DUC0dUp3HWC906X/gtNpYRdrd37vcOJ/m9ilqzZEl952X/8a1ZQ6SueKKllZoJT1GsjS4q5ENqwPEflbMEdkLT4vUfgh+RiH6UlEbwWupQJa6ZFbJ0OgNUvzw4NZ6v3ZiSWn/+lHcYxxGH0Mzwf0zr9/h76w/i3p9uaAi3749hFEp3M6Lwv6YjDGc9Rz+jGpLLWFKhn/5zLfBgMR8GH4y/D4Hi++fxpPh/VuH5YfExHi0WNhzDSDDuCnSMbldpva+dQTVdK1mS6uaYgpIG8mRpaDKnSS8+9vzXR+OQNBAAA"

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
$ScriptBlockUtil = "H4sIAAAAAAAACn1UXU8iMRR9J+E/3LAkysNM0EejZiO66iYq7rDrJsbEOlygsbSTfoDE9b/vLR1gYIaZB7htzz095/a2zcbIydRyJeEabfTEJf3dqaETeCtHSk+ZX/uE5fcN7h+u/vYffg2ajWYjzAG0A/yeTRHOoH31ganzST0lLX7YOEFjaJhYZjEO2FJykmqe2T6zE08RRneLWzlT6VLAZvakOB3fLXpqOmVyGPvcetpDb/DW4hRapeVWJ77kGlOr9MIbKTD1nNYobcCuTNZr2WEolZMYvn9uAP4LmNXorFjUKmDB2Aa8mdxOqXRQmtzkfG1CjdZpWWGh2SBUc3/zXH1kSlvjxeTNs9M/q8oUD2dP93Xian/twiZE8VNxGS3jNe8BBsRBSFi5KeTt99Fn6Tsb4x/Uvnt7gpm1m8rtayqQ4/fY25ZeJD2oUhJn5mjHzx7i3FvB3YOz0QWTEjV8lo/jeRZ2eGlTsOUo3zr3MTPWL3tUPFCJ1VyODzth8Ulzi9GNMhZar9LfjneM+kmggQj6ao46maAQkM8NlBItiEZwIRyWSXoqW2g+nlg47HXguNvtRsfd4yO4dlwI5qiZ+4LRQ7OkuNZsUaZwhgTCnH5ou9lS/qss4L92KvTbULUr6rPNSZgT2DUIz6dpeATOXyhWmSc1FJ9Gj477CtzwIdLdM0qfb4nY3WAwQRgpIZTXDTmpAaYR2Ixxwd4EntTkv1oqcra+ejc0qEUL+AeCU+y/S24ywRbApbFMCBxCFnrQxLUkjkhcNtZsSE9ZMlFzEiwpGbVvShqslK9QppbOEJ1BplN65eAHJybPZogX3pjhKekbKVCjtbpatvAW5PXIrxmwYJo4qF4Vfv0ZFTql8R991rH3MAcAAA=="

# ------------------------------------
# Script file - WinGetPackageVersion - 
# ------------------------------------
$ScriptBlockWinGetPackageVersion = "H4sIAAAAAAAACr1XbW/bNhD+HiD/4eAaiLROgrt1H9YuDdIs6AZsbZC0CzDHK2iLttnKZEJR6brA/3180QtJUUoNpNWHxDzePXyOfHgn7e+d5Kgo4JLQV1icocVHtMJ/YV4QRuEZ/H7CNteIo3mO4Q4A9vfkH/08guMswxkgkHGntNxgjgTjUQxvbjHnJMOt75RQMRv/iT4wbkNUZkJD5pclybOu+RzfapyQXQH59iqVl+Vyie3JQnBCV838BaLFOV6d/guHMPonOvploxZ5cZU9jqOrVI0VuB7HR8ZyjcRiXVnGowD0H2iOcwtUxXCsrS+mk+Tn4+RvlPw3a39eJVfp7Du9wGPpPFc78CXu/au/o0S0DAZQghBnFdszzq4xF59fow1WQGcXF3gjN07On+Mco8K4hSD0KQ6CtB6B+LfsQv+QqrprZ9VDltE4Gos1KdJaEjEk+AYmkBzTDOxJdXTBSUcclUd8BxyLklMY1W4GPW2GGq8Z6gTi0XaQ37egkHY2ZIDUV13XsegQn4l6vtZaaThHS17qsQlN54zlMzi9KVFeRNM38w94IWYwZmKtNseT3iNvWMfFQAqZ1E1JuKyLS1nUZLjeWaV8VRzTQaBmRwx7S/sKw5CxrE6wzMarfGAqN37Ldk+oDe3JKRd+CJKaTlaiN1WrkGuKoX4zGxO6YLLSrmQHkTXC0DWBvpAhcpz1DtEyz2MvN2tbnzzvKCCA2koREorBXqVSaGAFebHAiZQ7EYiULbThsgWcF7gxJNKyAz/dM7v8tP6H+ZnIDj9ToB6Kn2neHX7mDg/yqyJ9fibywfjV1aNLsakrgyzbeJ9o24wekmv4uJuKdy/X8KG3jemhuDoVt0vYLciDrD0kn7rXvnbl76+r6otrrcJVx9R8ZLH6DRXrE5ZhVZB9Ps50DF9OKFC43aXuq9XHFJgu77IyI1l/q5fvQhfqpjNtsFizzI8t1qyUty3alIU4ikG6sgbApTFIoqdtuZvi5txkfMtINvsVL1GZi8iXhF1SD2ESmjT1omeyuaYD8/pq9My7InScnHMLNbOeZJpUd4FqXqflf3k89yB7clcSNnGQkI36aIGDd/QjZZ/oQfPG99y/FeMMCaR6sAlNi+uciOggPYi76Mo1PWElFfV7pFhz9glGwY9KKS/G/fdBwT+Hy4EGn05mppi81h3e00Xtsh0AeBIEqM6+dhkC+CEEUIuvdhkC+DEEYAm09hrCeNqH4STydBDjpxCGL/Ta1QPaLpR8Agd1yYnAySXiVMoURqfqiIFQuK3OXNY1zOXHr/z7DMbv+1/Ft/fdBP1RL2Hfyw/078EaEmoP9bfz4cQ2cXwrY7o2Ql3bvFweTna7YmH1eiqtSPf61WdYZdPn12iuSXO/x9MWV7sBQ942BbM1fd4dwVQ75/p/E73o8rn3P+h2M7HIEgAA"

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



