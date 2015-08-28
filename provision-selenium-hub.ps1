$bat = @'
@echo off
java -jar C:\selenium\selenium-server-standalone-2.47.1.jar -role hub
'@

if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    $bat | Out-File "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup\selenium-hub.bat" -Encoding "Default" -Force
}
