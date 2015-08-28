$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

md C:\opt -Force

Unzip "$($scriptDir)\phantomjs-2.0.0-windows.zip" "C:\opt" $true
