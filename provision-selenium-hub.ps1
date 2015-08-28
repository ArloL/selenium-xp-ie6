$bat = @'
@echo off
java -jar C:\opt\selenium-server-standalone-2.47.1.jar -role hub
'@

$bat | Out-File "$([Environment]::GetFolderPath("Startup"))\selenium-hub.bat" -Encoding "Default" -Force
