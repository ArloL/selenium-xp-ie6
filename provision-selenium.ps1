$java_executable = Get-Command java | Select-Object -ExpandProperty Definition
netsh firewall add allowedprogram program=$java_executable name="Java(TM) Platform SE Binary" mode=ENABLE

md C:\selenium -Force
Copy-Item "C:\vagrant\selenium-server-standalone-2.47.1.jar" "C:\selenium"
if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    Copy-Item "C:\vagrant\selenium.bat" "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup" -Force
}
