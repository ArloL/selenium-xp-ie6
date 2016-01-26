@echo off
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v bginfo /f
exit /b 0
