$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    Copy-Item "$($scriptDir)\selenium-hub.bat" "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup" -Force
}
