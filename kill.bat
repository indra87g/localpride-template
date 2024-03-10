@echo off 
taskkill /F /IM httpd.exe
taskkill /F /IM mysqld.exe
echo Done
pause
