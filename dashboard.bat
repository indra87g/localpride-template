@echo off

title .localhost Dashboard

:Menu
Set Mode=
Cls
echo =======================================
echo .LOCALHOST DASHBOARD
echo Welcome back, %USERNAME%
echo =======================================
echo.
echo What's New ?
echo * Apache and MySQL Control
echo * ConEmu based terminal
echo * PHP Test
echo See the full changelog in CHANGELOG.md
echo.
echo MAIN MENU
echo 10. Start Apache
echo 11. Start MySQL
echo 12. Stop All
echo.
echo TOOLS MENU
echo 20. PHP Test                                    124. New Project
echo 21. Terminal                                    
echo 22. Download
echo 23. Update
echo.
echo OPTIONAL MENU
echo 90. Uninstall .localhost
echo.
echo 0. Refresh Dashboard 
echo.
Set /P Mode=Choose option or press Enter to Exit: 

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
start bin/kill.bat
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
start test-php.bat
Goto Menu

:21
rem Terminal
start terminal.bat
Goto Menu

:22
rem Download
echo =======================================
echo Hey, %USERNAME%!
echo Let's download something to increase
echo your productivity.
echo =======================================
echo.
echo FRONT-END
echo 100. phpMyAdmin
echo.
echo BACK-END
echo 101. Composer
echo.
echo 0. Back to Menu
echo.
Set /P Mode=Choose option: 

If "%Mode%"=="100" Goto 100
If "%Mode%"=="0" Goto Menu

:23
rem New Project
echo =======================================
echo Hey, %USERNAME%!
echo Let's make some new project
echo =======================================
echo.
echo FRONT-END
echo 110. Starter HTML + CSS + JS
echo 111. Portfolio Website
echo.
echo BACK-END
echo 120. Laravel                                     124. Livewire
echo 121. Django                                      125. Yii Framework
echo 122. Go Fiber
echo 123. Laravel Filament
echo.
echo 99. Back to menu
echo.

Set /P Mode=Choose option: 

If "%Mode%"=="110" Goto 110
If "%Mode%"=="0" Goto Menu

:24
:25
:26
:27
:28
:29
:101
rem Download > Composer
echo Downloading composer
echo Cloning composer from Github with Git...
echo.
pause
Goto Menu

:102
:103
:104
:105
:106
:107
:108
:109
:110
rem New Project > Starter HTML + CSS + JS
echo Starting new project in htdocs\project110
cd htdocs
md project110
echo Done! Now is cloning template with Git...
git clone
echo Operation Finished!
echo What i can do now ?
echo - Go to htdocs\project110 and rename it
echo - Start developing with your favourite code editor
echo.
pause
Goto Menu

:NotFound
echo Function not found!
pause
Goto Menu