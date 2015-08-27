param([String]$ip)

$bat = @'
@echo off
start java -jar C:\selenium\selenium-server-standalone-2.47.1.jar -role node -hub http://{ip}:4444/grid/register
'@

$bat = $bat.Replace("{ip}", $ip)

if (Test-Path "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup") {
    $bat | Out-File "$($env:ALLUSERSPROFILE)\Start Menu\Programs\Startup\selenium-node.bat" -Force
}
