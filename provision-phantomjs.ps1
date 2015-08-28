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

$startupFolder = "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup"
if (!(Test-Path $startupFolder)) {
    $startupFolder = "$($env:ALLUSERSPROFILE)\Microsoft\Windows\Start Menu\Programs\Startup"
}

$bat | Out-File "$($startupFolder)\phantomjs.bat" -Encoding "Default" -Force

