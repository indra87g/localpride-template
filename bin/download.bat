@echo off

title LOCALPRIDE DOWNLOADER
set nhc=nhcolor.exe

:Menu
Set Mode=
Cls
%nhc% 02 =======================================
%nhc% 02 LOCALPRIDE DOWNLOADER
%nhc% 04 Welcome back, %USERNAME%!
%nhc% 02 =======================================
echo.
%nhc% 04 MAIN MENU
echo 10. Start Apache
echo 11. Start MySQL
echo 12. Stop All
echo.
%nhc% 04 TOOLS MENU
echo 20. PHP Test                                    124. New Project
echo 21. Terminal                                    
echo 22. Download
echo 23. Update
echo.
%nhc% 04 ADDITIONAL MENU
echo 90. Setup (Important if you change the directory)
echo.
echo 0. Refresh Dashboard 
echo.
Set /P Mode=Please choose the option, sir:

If "%Mode%"=="10" Goto 10