reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v DefaultConnectionSettings /t REG_BINARY /d 460000000c0000000b0000001f000000697773732e6865726272616e642e727a2e65766f7365632e64653a383038308c0000006c6f63616c686f73743b3132372e302e302e313b3139322e3136382e35302e313b3139322e3136382e35362e313b35332e3130302e3138392e3133323b35332e3130302e3138392e3136353b2a2e727a2e65766f7365632e64653b2a2e6b6576656c6165722e6865726272616e642e64653b2a2e746f796f74612d6a616e73656e2e64653b3c6c6f63616c3e0000000004000000000000001066fb0ab44bd20100000000000000000000000001000000020000000a00020f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d iwss.herbrand.rz.evosec.de:8080 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;192.168.50.1;192.168.56.1;53.100.189.132;53.100.189.165;*.rz.evosec.de;*.kevelaer.herbrand.de;*.toyota-jansen.de;<local>" /f

netsh winhttp set proxy iwss.herbrand.rz.evosec.de:8080 "<local>"
