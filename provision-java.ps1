$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jre1.8.0_60")) {
    Start-Process -FilePath "$($scriptDir)\jre-8u60-windows-$($java_architecture).exe" -ArgumentList "/s","INSTALL_SILENT=1","AUTO_UPDATE=0","WEB_JAVA=0","REBOOT=0","NOSTARTMENU=1","SPONSORS=0" -Wait -Passthru
}
