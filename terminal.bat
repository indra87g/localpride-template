@ECHO OFF
GOTO weiter
:setenv
SET "MIBDIRS=%~dp0php\extras\mibs"
SET "MIBDIRS=%MIBDIRS:\=/%"
SET "MYSQL_HOME=%~dp0mysql\bin"
SET "OPENSSL_CONF=%~dp0apache\conf\openssl.cnf"
SET "OPENSSL_CONF=%OPENSSL_CONF:\=/%"
SET "PHP_PEAR_SYSCONF_DIR=%~dp0php"
SET "PHP_PEAR_BIN_DIR=%~dp0php"
SET "PHP_PEAR_TEST_DIR=%~dp0php\tests"
SET "PHP_PEAR_WWW_DIR=%~dp0php\www"
SET "PHP_PEAR_CFG_DIR=%~dp0php\cfg"
SET "PHP_PEAR_DATA_DIR=%~dp0php\data"
SET "PHP_PEAR_DOC_DIR=%~dp0php\docs"
SET "PHP_PEAR_PHP_BIN=%~dp0php\php.exe"
SET "PHP_PEAR_INSTALL_DIR=%~dp0php\pear"
SET "PHPRC=%~dp0php"
SET "TMP=%~dp0tmp"
SET "PERL5LIB="
SET "Path=;%~dp0;%~dp0php;%~dp0perl\site\bin;%~dp0perl\bin;%~dp0apache\bin;%~dp0mysql\bin;%~dp0FileZillaFTP;%~dp0MercuryMail;%~dp0sendmail;%~dp0webalizer;%~dp0tomcat\bin;%Path%"
GOTO :EOF
:weiter

IF "%1" EQU "setenv" (
    echo LOCALHOST TERMINAL v0.1.0
    php\php.exe --version
    echo.
    call :setenv
) ELSE (
    setlocal
    title .localhost Terminal
    prompt %username%@%computername%$S$P$_#$S
    start "" /B %COMSPEC% /K "%~f0" setenv
)

