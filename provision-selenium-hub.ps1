$bat = @'
@echo off
java -jar C:\opt\selenium-server-standalone-2.47.1.jar -role hub
'@

$startupFolder = "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup"
if (!(Test-Path $startupFolder)) {
    $startupFolder = "$($env:ALLUSERSPROFILE)\Microsoft\Windows\Start Menu\Programs\Startup"
}

$bat | Out-File "$($startupFolder)\selenium-hub.bat" -Encoding "Default" -Force
