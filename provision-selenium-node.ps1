if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    Copy-Item "C:\vagrant\selenium-node.bat" "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup" -Force
}
