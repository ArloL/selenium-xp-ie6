$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jre8")) {
    Start-Process -FilePath "$($scriptDir)\jre-8-windows-$($java_architecture).exe" -ArgumentList "/s","WEB_JAVA=1","SPONSORS=0" -Wait -Passthru
}
