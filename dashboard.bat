@echo off

title Localpride CLI v0.2.0
set nhc=bin\nhcolor.exe

:Menu
Set Mode=
Cls
%nhc% 02 =======================================
%nhc% 02 LOCALPRIDE DASHBOARD
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
echo 21. Status                                    
echo 22. Download
echo 23. Update
echo.
echo 0. Refresh Dashboard 
echo.
Set /P Mode=Please choose the option, sir:

If "%Mode%"=="10" Goto 10
If "%Mode%"=="11" Goto 11
If "%Mode%"=="12" Goto 12
If "%Mode%"=="13" Goto 13
If "%Mode%"=="20" Goto 20
If "%Mode%"=="21" Goto 21
If "%Mode%"=="22" Goto 22
If "%Mode%"=="23" Goto 23
If "%Mode%"=="90" Goto 90
If "%Mode%"=="91" Goto 91
If "%Mode%"=="92" Goto 92
If "%Mode%"=="93" Goto 93
If "%Mode%"=="0" Goto Menu
If "%Mode%"=="" Goto 404

echo.
pause

:10
rem Start Apache
start apache\bin\httpd.exe
Goto Menu

:11
rem Start MySQL
start mysql\bin\mysqld.exe --defaults-file="mysql\my.ini" --standalone --console
Goto Menu

:12
rem Stop All
start bin\kill.bat
Goto Menu

:13
:14
:15
:16
:17
:18
:19

:20
rem PHP Test
start bin\phptest.bat
Goto Menu

:21
rem Status
start bin\status.bat
Goto Menu

:22
rem Download
start bin\download.bat
Goto Menu

:23
rem New Project
start bin\newproject.bat
Goto Menu

:24
:25
:26
:27
:28
:29
:30

:90
start bin\setup.bat

:91
:92
:93
:94
:95
:96
:97
:98

:404
%nhc% 47 Error 404 : Function not found!
pause
Goto Menu