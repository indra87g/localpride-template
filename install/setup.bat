@echo off
echo ============================
echo LOCALPRIDE INTERACTIVE SETUP
echo ============================
echo.
echo [1/4] Installing Main Package
echo + Installing Apache...
cd ../
::wget
echo + Installing MySQL...
cd ../
::wget
echo + Installing PHP...
cd ../
::wget
echo [2/4] Setting Configuration
echo + Setting PHP...
cd ../
set PHP_BIN=php\php.exe
set CONFIG_PHP=install\install.php
%PHP_BIN% -n -d output_buffering=0 %CONFIG_PHP%
echo + Setting Pretty URL (http://localpride.pro)...
mv hosts C:\Windows\System32\drivers\etc
echo [3/4] Additional Menu
Set /P Mode=Do you want to use ConEmu as default terminal ? - Recommended [1/Yes 2/No]
If "%Mode%"=="1" Goto InstallConemu
If "%Mode%"=="2" Goto End

:InstallConemu
echo Installing ConEmu...
cd ../
wget
echo.
pause
Goto End

:End
echo [4/4] Finished
echo + Operation success. Now you can control localpride from 'dashboard.bat'
echo + Dont forget to read the documentation (https://indra87g.github.io/lp-doc)
echo + Thanks for using this tools !
echo.
pause