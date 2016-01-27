$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jre1.7.0_80")) {
    Start-Process -FilePath "$($scriptDir)\jre-7u80-windows-$($java_architecture).exe" -ArgumentList "/s","SPONSORS=0" -Wait -Passthru
}
