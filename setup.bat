@echo off
title .localhost Setup

echo Initializing setup...
echo Cleaning directory...
echo Deleting ./docs
::rmdir docs
::rm .gitignore
echo Cleaning directory is successfully. Now starting next steps...
echo Downloading package...
echo Download package currently unavailable. Please install manually in 'localhost' directory. Use this format :
echo Apache v2.4 (rename folder to 'apache')
::tools\7za
echo MySQL v8.3.0 (rename folder to 'myql')
::tools\7za
echo PHP v8.1.1 (rename folder to 'php')
::tools\7za
echo Testing PHP...
php\php.exe -n -d output_buffering=0 --version
if %ERRORLEVEL% GTR 0 (
echo Test php.exe failed !!!
echo Perhaps the Microsoft C++ 2008 runtime package is not installed.  
echo Please try to install the MS VC++ 2008 Redistributable Package from the Mircrosoft page first
start http://www.microsoft.com/en-us/download/details.aspx?id=5582
pause
exit 1
)
echo Test for the PHP successfully passed. Now finalizing setup...
echo ApacheFriend (XAMPP) Setup for .localhost
if "%1" == "sfx" (
    cd localhost
)
if exist php\php.exe GOTO Normal
if not exist php\php.exe GOTO Abort

:Abort
echo Sorry ... cannot find php cli!
echo Aborting the process...
pause
GOTO END

:Normal
set PHP_BIN=php\php.exe
set CONFIG_PHP=bin\install.php
%PHP_BIN% -n -d output_buffering=0 %CONFIG_PHP%
GOTO END

:END
echo Operation success. Now you can control .localhost from 'dashboard.bat'
echo <?php echo "Thanks for using .localhost!" ?>
echo.

pause