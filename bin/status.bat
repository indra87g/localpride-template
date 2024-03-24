@echo off
echo LOCALPRIDE STATUS
echo Localpride CLI v0.2.0
echo.
cd ../
echo ==== PHP
php\php --version
echo ====
echo ==== Apache
apache\bin\httpd -v
echo ====
echo ==== MySQL
mysql\bin\mysqld --version
echo ====

::IF "%1" EQU "setenv" (
::    echo LOCALPRIDE TERMINAL
::    php\php.exe --version
::    echo.
::    call :setenv
::) ELSE (
::    setlocal
::    title Localpride Terminal
::    prompt %username%@%computername%$S$P$_#$S
::    start "" /B %COMSPEC% /K "%~f0" setenv
::)

