netsh firewall set opmode disable

md C:\selenium -Force
Copy-Item "C:\vagrant\selenium-server-standalone-2.47.1.jar" "C:\selenium"
if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    Copy-Item "C:\vagrant\selenium.bat" "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup" -Force
}
