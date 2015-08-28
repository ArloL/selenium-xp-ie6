$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

md C:\opt -Force

Unzip "$($scriptDir)\phantomjs-1.9.8-windows.zip" "C:\opt" $true

netsh firewall add allowedprogram program="C:\opt\phantomjs-1.9.8-windows\bin\phantomjs.exe" name="PhantomJS" mode=ENABLE
