$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

Unzip "$($scriptDir)\IEDriverServer_Win32_2.46.0.zip" "C:\Windows\system32" $true
