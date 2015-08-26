$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Get-EnvironmentVariable.ps1
. $scriptDir\Get-EnvironmentVariableNames.ps1
. $scriptDir\Update-SessionEnvironment.ps1
. $scriptDir\Unzip.ps1

$java_architecture = "x64"
$driver_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $driver_architecture = "Win32"
    $java_architecture = "i586"
}

netsh firewall set opmode disable

if (!(Test-Path "C:\Program Files\Java\jre1.8.0_60")) {
    Start-Process -FilePath "$($scriptDir)\jre-8u60-windows-$($java_architecture).exe" -ArgumentList "/s" -Wait -Passthru
    Update-SessionEnvironment
}

$java_executable = Get-Command java | Select-Object -ExpandProperty Definition

netsh firewall add allowedprogram program=$java_executable name="Java(TM) Platform SE Binary" mode=ENABLE

Unzip "$($scriptDir)\IEDriverServer_$($driver_architecture)_2.46.0.zip" "C:\Windows\system32" $true

Start-Process java.exe -ArgumentList "-jar `"$($scriptDir)\selenium-server-standalone-2.47.1.jar`""
