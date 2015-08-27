@echo off
start java -jar C:\selenium\selenium-server-standalone-2.47.1.jar -role hub
ping -n 5 127.0.0.1 >nul
start java -jar C:\selenium\selenium-server-standalone-2.47.1.jar -role node -hub http://localhost:4444/grid/register
