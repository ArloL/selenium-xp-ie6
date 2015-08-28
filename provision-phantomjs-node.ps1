param([String]$hubIp, [String]$bindIp)

$bat = @'
@echo off
C:\opt\phantomjs-2.0.0-windows\bin\phantomjs.exe --webdriver={bindIp}:8080 --webdriver-selenium-grid-hub=http://{hubIp}:4444
'@

$bat = $bat.Replace("{hubIp}", $hubIp)
$bat = $bat.Replace("{bindIp}", $bindIp)

$bat | Out-File "$([Environment]::GetFolderPath("Startup"))\phantomjs.bat" -Encoding "Default" -Force
