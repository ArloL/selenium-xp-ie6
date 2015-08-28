param([String]$hubIp, [String]$bindIp)

$bat = @'
@echo off
java -jar C:\opt\selenium-server-standalone-2.47.1.jar -role node -hub http://{hubIp}:4444/grid/register -host {bindIp}
'@

$bat = $bat.Replace("{hubIp}", $hubIp)
$bat = $bat.Replace("{bindIp}", $bindIp)

$bat | Out-File "$([Environment]::GetFolderPath("Startup"))\selenium-node.bat" -Encoding "Default" -Force
