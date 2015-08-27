netsh firewall set opmode disable

md C:\selenium -Force
Copy-Item "C:\vagrant\selenium-server-standalone-2.47.1.jar" "C:\selenium"
Copy-Item "C:\vagrant\selenium.bat" "C:\Documents and Settings\All Users\Start Menu\Programs\Startup" -Force
