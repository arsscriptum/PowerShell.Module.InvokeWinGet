<#
  ╓──────────────────────────────────────────────────────────────────────────────────────
  ║   PowerShell PowerShell.Module.InvokeWinGet Module
  ║   Version 1.0.71 , Generated on Wednesday, 21 September, 2022 3:18 PM 
  ║   Description: 
  ║   Current Git Revision f3c7ebaec7f19474e6c43dde542cf7de05d70392
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
$ScriptBlockInvokePsWinGet = "H4sIAAAAAAAACu0aTW/juPU+wPwHrtao5WmkcWYwaJtpZsabOInbJDbsZKbbJPUwEm1rIosaSorjJgEWBXrroUBz6GEPPfTYY3+Rf0kfSX1QsmIns9ktsIgAWzb5+N7j4/si+Z4+efpkK/Ks0KEeannn9IwYnd4Hx9sm4eVT6Hz6BMFztDG2XRJ+43i24w31XuT7lIVBb0Qj1+4wapEgqJ1IWB8zPNaTkWL0e+w6Ng5Jz2KOH+qXWRd/KoFER+y+Rcdj7NkBWkfv9KpbXam6ThBWV1DV8YIQuy6xoS3gH4KZNeI91HMdj0BTxD8+p8ObI3/IsM3bxeeCU6jWCpSjgLA+8UI2BYqVvnlAd+mEML0I1z7j/fN8mhvUCzHwpiuoCoOdgW7s0xDpgKWGaoXJ8yccMTpBWowUeQCckkI5zCbqpR0biawwI+jhZIU4C4m8tDyz1/m/jIQR81AlZBFBWdd1ogli7TtcHUgIQt0DzDikbLouRqx0aOBwvVuv5wY0XAcHetXijFlju5rr7IUMFPCkEk9+ZRmhAXYDhdJqKbK2zzvvhiuHIJg4oTU6qew4NtmIWECZ7AQNSPS/Im2pg60zPCTvCQuA1IaLg6CDwxFoFXQaC2EkHtCiAxKEhhi1BKkAOpj6BO0SPFA1zkTa4rFavI6w0vLH14x8jhxGAmScS1j0yqyns5MWvdaOQj8KdwDnemWLiyllWpGNykjZwANQipS6oI3Wf+iTIAqw54RTZI2IdRagNXQeeySwPRwim/jEs4lnOUSaEyNDsCXCiG2a5gMzA3asCOKobDlOKiGsNcgb9KMcYG3NIxNdWzXrZl1THA6XeDzW3MOfKEOGR9Bq7TJxMk3GoBH0doTKEGvXOVyKzmkVPVPV5gWRmgbDTmlA1uSq17SaoCfsewHNeHhC7NrCYEaKUD4wJySGHKZV+ooXki6nqKMPpyfgcFAIlrOGCA4cWIDJiHjICUEtPES8aPyjKkPDtg1ht+J7kwwc0Fpucu/yjtiPTl3HEvwgiMwcONdfEmMcT6g8KFR9paw3jhglfTJmlHTIqIFP3bJOGUBy7bBe2ruFKx5rE9KEEOKZIewygu0pwrZNbE1Z+yw34XAQFOIB61nb2lo88Zw3Bv3Led5YHzN94gnBeIpOQftRSNHAuQBdJqh9eNA5PEADRsexJqfuocIxgo0cWSPMTl78qhYzyg1yztepnvDrEThIgd1SIkgmkx0KPGgVcvT2xStXQwhyiX0y4UuClJg7EbAjCatXSO0o0BTQW5FGWgnCxP3e8UmE1m1uN/+ADnvNrcNdtNXuok6j22vtb6O9b2PJmYo39aXfAdUbUKRPiOsaA8rGxI69WcUPmdf3z6CfS/ZP+tvf7kNMfnN0PDnWj2vo2ETHBjb+3DD+WDd+c/zs5LK+8vLVdU0/Dn5ZA+CWDaCmAiIAfp0BxB5vCRSIZjGgVpxQ6IQuUecgGnJz4F+cwrOY0Zad/kuIxe+0vXGOHZfb2pv0V0Y68hyLghYNIW0ZxjGtxU2QMId4IoihMeb6jGxnMIC45oUIYKY0Ysh3sUVMgB84LoQ8RKNQqGPIcDCSXjscOUGi5z6lfU7PRmhdzOhwv7XR3mzW6yCgqF7fqBv8tbV18iwVYgKyWgqSmzcIORauXEvRuQuROghLQVIZ4MByHC6BUy6CAaWnmCksy+6Y5UZvo9USDF+82FT4lO2ravuzrP3FLe0v0/aYmcoE0koS9iGY9CFzilwIH+CTgimkFGPTouBoxYYrMDFjeMrT9jigi8RRoAAHSYYUlu8eQ4U3PKeOfaIMNyGo6FWucdXFIC17CUAs/yVQqXougeuB7lkpkMyk9SSvzzZi3FWqe8nL27Y6yCCfYQuHrjlQPh4tjRAxDpWOVKoNaEfJvqyxvylcWlOYBxXePD/gF0l2DQEFXLXGudSQZhjYsogfGoGYs4GHjJAx2CD46CuOyAjETgTxN8FjaARXSLA1MujpJ1jwS8XTJ09FeGwec/ofvcI+TTIPRtdEB22003jfXIHMSRi64L3TbW93m70e5MPgMSyw+oC7iCCyztApmL9H0ZBK09/rddofmt3eTnN39/zVCvoUQeSYUAZZtOi3gFETbfGRTmiWsJHwKd5mV3Kha8bx8dXz2c2/Zzf/nN38d3ZzM7v5fnbzt9nNf2Y3f5/96y/G7Lt/zL67gW9DW4lDVWFjneSokoIB2+YxzyoUFwXZKF+4cgjhEfiGvES4Mep4XDIodeY1dNsgReHnnYBQfIGz9loN3upzTSCPLictYuGPSXq+udCk/E2T79goS88ZVJu8p1FKDHMnKZVO7xsaeXa6Qc+OYH5PpnpVbuWrNUlZbkrSfUjsXFDM6POEy3SLK9thBziMuHmqm6Ef5JQLy7PIOS8BzZz0EsCCs14CvcfV7I6wecedyubhUh3BzBvxnbZJom/kK4mzedr/91RR8n10vKbAoCJQPJGjHJbVukhkHjj6SG2G+BMfcD1GosdI9HONRLlYVH64nQWj+0Wi7JhjsbnFdISVOZ7lRjYxIu/Mo5NHy3u0vJ+t5Sl2p1y0famxlRwbPlzal/CW5ntw4kHg3CZckPLFVv1le3kV0+Nm8nEz+biZvN2vPIbTxyOVZTGtxBn/ZPH0S2nfJaAWI8Ves7vdRDvNbjMXbJOf8S0Nv9YWx6by/13vm4B5qGcgKLAYRC9+7Mhvu2l8qVpyRxTICyUmX7kbIwVtMIJYe7drrHyVQXzgHdBBOIG79z4PoVzC9wuzldwdAT9vTPILnhIsSOdLCUNyATfoodHgxA5ow/dbcE3VFoexQen5vno2ZOR4WcuzVlysW9iUuUquZCLPaDaP++cji1AtmXpZPrRo7rwSQFXwAmk5zS+YQcve4LUcu9ArSrNumZDZim9++bNFWRMO1fUK9n24dyxZ+mJ1VsU/G/ZhI4k5h53eBhx+07GUxcm7klt2fuyk/gfOgJbJm+eBW3CFVgKscpw8iVoXQONmuC2RpUzFnJM/h2IjbLeTwetI1HFsQmPNhF/8x4EzJiAccIyBXjt6+VKpceJPMScG0qKSoJTdI3mXcVLB/CKoL4tYtLooVCnggTXl/XwKfQGNhQbKQqv5PYCy5ErdnWBGXBMVZ34rfqmTc+Bw17JIleBWBopBwHEaUPAIN6tQTgQrKDYcUiBXcH7MdRcZh57zGUrisobmhQ87kHRciUMoTpYzI3DvR647V0rDi1LGhA259+bqGXIG+R1Ocf+SoBMI+XJz96LXhEbK3VK1rAyoWiZPufbKqgqci3RPBN67YrrPzjNvm1eicGaPjE8BGa+1JImkhT1mV/jp3WQeCspTYbVK1eULSeaDURmxdPbF6B+nG2VuUuYbCQ+KvHMpRAUKcAOoUf0UyDhY6nCvEj9/QI3fAWA2PF9oKDfWcxWFhWRHrT750OjuQ9HHVwjyhAHaxOysC8WqhodeLxi0xTfiH5OD6o9aWvNDLoDp4CsoXGwDt5DtEKRPn+/XUuTbECLKsBdd1noX8MkshNvv2Aeqb7W5YdxWsHJTqE2hpK1Eg1XmmxdQpAWGCHLipbrieAEkCLWWCZPfQnULncxjSQpoy5bodUH51Snl15t7CFhoUHOjBSFULla2dLxNLJ047TDAz8MtsCyua8R130MPEsJixpYWY82+/6to4nNMrhIy4B4EE+6NeUlJgXKs6qo+SvLZ6DtIIDZ7+V0OD5EbgJ8+AdAn/wM7D2cV0i4AAA=="

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



