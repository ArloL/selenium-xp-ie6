@echo off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advaned" /v EnableBalloonTips /t REG_DWORD /d 0 /f
