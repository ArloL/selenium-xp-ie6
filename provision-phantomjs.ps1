$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

md C:\opt -Force

Unzip "$($scriptDir)\phantomjs-1.9.8-windows.zip" "C:\opt"

netsh firewall add allowedprogram program="C:\opt\phantomjs-1.9.8-windows\phantomjs.exe" name="PhantomJS" mode=ENABLE
