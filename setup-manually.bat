@echo off
set PHP_BIN=php\php.exe
set CONFIG_PHP=bin\install.php
%PHP_BIN% -n -d output_buffering=0 %CONFIG_PHP%
GOTO END

:END
echo Operation success. Now you can control .localhost from 'dashboard.bat'
echo <?php echo "Thanks for using .localhost!" ?>
echo.

pause