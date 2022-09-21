<#
#̷𝓍   𝓐𝓡𝓢 𝓢𝓒𝓡𝓘𝓟𝓣𝓤𝓜 
#̷𝓍   
#̷𝓍   WinGetPackageVersion
#̷𝓍   
#>

Class WinGetPackageVersion : IComparable {   
        # Added a GetEnumerator() Override
        [int]$Major  
        [int]$Minor  
        [int]$Build  
        [int]$RevMajor
        [int]$RevMinor
        [int]$VersionBuffer
        [string]ToString() {
            if($($this.RevMajor) -eq 0 -And $($this.RevMinor) -eq 0 -And $($this.VersionBuffer) -eq 0){ return "$($this.Major).$($this.Minor).$($this.Build)"}
            if($($this.RevMinor) -eq 0 -And $($this.VersionBuffer) -eq 0){ return "$($this.Major).$($this.Minor).$($this.Build).$($this.RevMajor)"}
            if($($this.VersionBuffer) -eq 0){ return "$($this.Major).$($this.Minor).$($this.Build).$($this.RevMajor).$($this.RevMinor)"}
                return "$($this.Major).$($this.Minor).$($this.Build).$($this.RevMajor).$($this.RevMinor).$($this.VersionBuffer)"
            }
         [bool] Equals([Object] $other) {
            #
            # Equals() is required for the -eq operator.
            #
              return $this.ToString() -eq $other.ToString()
           }

        [int] CompareTo([Object] $other) {
            #
            # CompareTo() is required for the -lt
            # and -gt operator.
            # 
            [WinGetPackageVersion]$incomingver = $other
    
            if ($incomingver -eq $null){
                return 1;
            }

            if ($this.Major -ne $incomingver.Major){
                if( $this.Major -gt $incomingver.Major) { return 1;} else{ return -1;};
            }

            if ($this.Minor -ne $incomingver.Minor){
                if( $this.Minor -gt $incomingver.Minor) { return 1;} else{ return -1;};
            }

            if ($this.Build -ne $incomingver.Build){
                if( $this.Build -gt $incomingver.Build) { return 1;} else{ return -1;};
            }

            if ($this.RevMajor -ne $incomingver.RevMajor){
                if( $this.RevMajor -gt $incomingver.RevMajor) { return 1;} else{ return -1;};
            }

            if ($this.RevMinor -ne $incomingver.RevMinor){
                if( $this.RevMinor -gt $incomingver.RevMinor) { return 1;} else{ return -1;};
            }

            if ($this.VersionBuffer -ne $incomingver.VersionBuffer){
                if( $this.VersionBuffer -gt $incomingver.VersionBuffer) { return 1;} else{ return -1;};
            }
                  

            return if($this.GetHashCode() -gt $incomingver.GetHashCode())  { return 1;} else{ return -1;};
        }

        [int] GetHashCode() {
            #
            # An object that overrides the Equals() method
            # should (must?) also override GetHashCode()
            #
            return $this.ToString().GetHashCode();
        }
        [void]Default(){
            $this.Major = 0
            $this.Build = 0
            $this.RevMajor = 0
            $this.RevMinor = 0
            $this.VersionBuffer = 0
        }

        WinGetPackageVersion(){
            $this.Default()
        }

        WinGetPackageVersion([string]$strver){
            $this.Default();
            if($strver -imatch 'Unknown'){ return; }
            $data = $strver.split('.')
            if($data.Count -eq 0){throw "WinGetPackageVersion error"}
            try{
                if($data[0] -ne $Null){ $this.Major = $data[0]}
                if($data[1] -ne $Null){ $this.Minor = $data[1]}
                if($data[2] -ne $Null){ $this.Build = $data[2]}
                if($data[3] -ne $Null){ $this.RevMajor = $data[3]}
                if($data[4] -ne $Null){ $this.RevMinor = $data[4]}
                if($data[5] -ne $Null){ $this.VersionBuffer = $data[5]}
            }catch{
                Write-Warning "Error in version interpreter: $_"
            }
        }
        WinGetPackageVersion([int]$ver_maj, [int]$ver_min, [int]$ver_build=0, [int]$ver_revmaj=0, [int]$ver_revmin=0, [int]$ver_buf=0){
            $this.Default();
            try{
                $this.Major = $ver_maj
                $this.Minor = $ver_min
                $this.Build = $ver_build
                $this.RevMajor = $ver_revmaj
                $this.RevMinor = $ver_revmin
                $this.VersionBuffer = $ver_buf
            }catch{
                Write-Warning "Error in version interpreter: $_"
            }
        }
}

