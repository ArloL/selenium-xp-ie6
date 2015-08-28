param([String]$hubIp, [String]$bindIp)

$bat = @'
@echo off
java -jar C:\opt\selenium-server-standalone-2.47.1.jar -role node -hub http://{hubIp}:4444/grid/register -host {bindIp}
'@

$bat = $bat.Replace("{hubIp}", $hubIp)
$bat = $bat.Replace("{bindIp}", $bindIp)

$startupFolder = "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup"
if (!(Test-Path $startupFolder)) {
    $startupFolder = "$($env:ALLUSERSPROFILE)\Microsoft\Windows\Start Menu\Programs\Startup"
}

$bat | Out-File "$($startupFolder)\selenium-node.bat" -Encoding "Default" -Force
