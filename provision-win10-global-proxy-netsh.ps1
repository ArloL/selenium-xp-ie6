reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /t REG_DWORD /d 0 /f

netsh set proxy 10.40.1.14:3128 "<local>"
