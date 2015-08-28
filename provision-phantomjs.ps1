param([String]$hubIp, [String]$bindIp)

$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

md C:\opt -Force

Unzip "$($scriptDir)\phantomjs-2.0.0-windows.zip" "C:\opt" $true

$bat = @'
@echo off
C:\opt\phantomjs-2.0.0-windows\bin\phantomjs.exe --webdriver=8080 --webdriver-selenium-grid-hub=http://{hubIp}:4444 --ip={bindIp}
'@

$bat = $bat.Replace("{hubIp}", $hubIp)
$bat = $bat.Replace("{bindIp}", $bindIp)

if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    $bat | Out-File "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup\selenium-hub.bat" -Encoding "Default" -Force
}
