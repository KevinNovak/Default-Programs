:: Default Programs - Automatically installs basic programs
:: Code by: Kevin Novak
:: Last Edited: 9/17/2015
:: Version: 0.0.0.0

@echo off

title Default Programs

:: define a variable containing a single backspace character
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

:: =================================================
:: Detect OS
:: =================================================
setLocal EnableDelayedExpansion
for /f "tokens=* USEBACKQ" %%f in (`ver`) do set versionOutput=%%f

set googleChrome=
set firefox=
set java=
set adobeReader=
set googleDrive=
set flashzone=
set essentials=
set alln=
set ally=

:_menu
cls
echo.
echo   ------------- Default Programs -------------
echo   Which components would you like to install?
echo     1  Google Chrome        7  MSSE
echo     2  Firefox              N  [All w/o MSSE]
echo     3  Java                 Y  [All w/ MSSE]
echo     4  Adobe Reader         S  [Start]
echo     5  Google Drive         Q  [Quit]
echo     6  FlashZone
echo.
echo   Currently:
if not "%googleChrome%"=="" (
    echo       %googleChrome%
)
if not "%firefox%"=="" (
    echo       %firefox%
)
if not "%java%"=="" (
    echo       %java%
)
if not "%adobeReader%"=="" (
    echo       %adobeReader%
)
if not "%googleDrive%"=="" (
    echo       %googleDrive%
)
if not "%flashzone%"=="" (
    echo       %flashzone%
)
if not "%essentials%"=="" (
    echo       %essentials%
)
echo.
set choice=
set /p choice=%BS%  Add: 
if %choice%==1 (
    set googleChrome=Google Chrome
)
if %choice%==2 (
    set firefox=Firefox
)
if %choice%==3 (
    set java=Java
)
if %choice%==4 (
    set adobeReader=Adobe Reader
)
if %choice%==5 (
    set googleDrive=Google Drive
)
if %choice%==6 (
    set flashzone=FlashZone
)
if %choice%==7 (
    set essentials=MSSE
)
if %choice%==n (
    set googleChrome=Google Chrome
    set firefox=Firefox
    set java=Java
    set adobeReader=Adobe Reader
    set googleDrive=Google Drive
    set flashzone=FlashZone
    goto _start
)
if %choice%==y (
    set googleChrome=Google Chrome
    set firefox=Firefox
    set java=Java
    set adobeReader=Adobe Reader
    set googleDrive=Google Drive
    set flashzone=FlashZone
    set essentials=MSSE
    goto _start
)
if %choice%==q (
    exit
)
if %choice%==s (
    goto _start
)
goto _menu

:_start
cls
echo.
echo   Installing Programs:
if not "%googleChrome%"=="" (
    echo     Google Chrome...
    chrome.exe
)
if not "%firefox%"=="" (
    echo     Firefox...
    firefox.exe
)
if not "%java%"=="" (
    echo     Java...
    java.exe
)
if not "%adobeReader%"=="" (
    echo     Adobe Reader...
    reader.exe
)
if not "%googleDrive%"=="" (
    echo     Google Drive...
    drive.exe
)
if not "%flashzone%"=="" (
    echo     FlashZone...
    copy flashzone.exe "%USERPROFILE%\Desktop" >NUL
)
if not "%essentials%"=="" (
    echo     MSSE...
    essentials.exe
)
echo.
echo   Default programs have been installed.
echo.
set /p var=%BS%  Press Enter to Exit:
exit
