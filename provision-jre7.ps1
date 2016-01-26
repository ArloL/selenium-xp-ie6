$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jre1.7.0_80")) {
    Start-Process -FilePath "$($scriptDir)\jre-7u80-windows-$($java_architecture).exe" -ArgumentList "/s","INSTALL_SILENT=1","AUTO_UPDATE=0","WEB_JAVA=1","WEB_ANALYTICS=0","REBOOT=0","NOSTARTMENU=0","SPONSORS=0" -Wait -Passthru
}