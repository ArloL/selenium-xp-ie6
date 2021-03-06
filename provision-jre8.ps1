$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jre8")) {
    $process = Start-Process -FilePath "$($scriptDir)\jre-8-windows-$($java_architecture).exe" -ArgumentList "/s","INSTALL_SILENT=1","AUTO_UPDATE=0","WEB_ANALYTICS=0","REBOOT=0","SPONSORS=0" -Wait -Passthru
    if ($process.ExitCode -ne 0) {
        throw "Error installing jre: " + $process.ExitCode
    }
}
