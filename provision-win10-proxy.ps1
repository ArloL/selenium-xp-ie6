reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /t REG_DWORD /d 1 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d 10.40.1.14:3128 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "<local>" /f

# we have to instantiate IE to commit the registry settings
$ie = New-Object -ComObject internetexplorer.application
$ie.Quit()

netsh winhttp import proxy source=ie
