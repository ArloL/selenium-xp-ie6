$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_executable = Get-Command java | Select-Object -ExpandProperty Definition
netsh firewall add allowedprogram program=$java_executable name="Java(TM) Platform SE Binary" mode=ENABLE

md C:\opt -Force

Copy-Item "$($scriptDir)\selenium-server-standalone-2.47.1.jar" "C:\opt"
