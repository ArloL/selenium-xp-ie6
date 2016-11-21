reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v DefaultConnectionSettings /t REG_BINARY /d 46000000040000000B0000000F00000031302E34302E312E31343A333132388C0000006C6F63616C686F73743B3132372E302E302E313B3139322E3136382E35302E313B3139322E3136382E35362E313B35332E3130302E3138392E3133323B35332E3130302E3138392E3136353B2A2E727A2E65766F7365632E64653B2A2E6B6576656C6165722E6865726272616E642E64653B2A2E746F796F74612D6A616E73656E2E64653B3C6C6F63616C3E000000000000000000000000000000000000000000000000000000000000000000000000 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d keviwss03.herbrand.rz.evosec.de:8080 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;192.168.50.1;192.168.56.1;53.100.189.132;53.100.189.165;*.rz.evosec.de;*.kevelaer.herbrand.de;*.toyota-jansen.de;<local>" /f

netsh winhttp set proxy keviwss03.herbrand.rz.evosec.de:8080 "<local>"
