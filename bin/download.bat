@echo off

title Localpride Downloader
set nhc=nhcolor.exe

:Menu
Set Mode=
Cls
%nhc% 02 =======================================
%nhc% 02 LOCALPRIDE DOWNLOADER
%nhc% 04 Welcome back, %USERNAME%!
%nhc% 02 =======================================
echo.
%nhc% 04 Recommended
echo 10. Visual Studio Code
echo 11. Nodejs
echo 12. Composer
echo.
%nhc% 04 All
echo 20. HeidiSQL                                    124. 
echo 21. Nginx                                    
echo 22. Composer
echo 23. Notepad++
echo.
echo 0. Back to Dashboard
echo.
Set /P Mode=Please choose the option, sir:

If "%Mode%"=="10" Goto 10
if "%Mode%"=="0" Goto 0

:0
cd ../
dashboard