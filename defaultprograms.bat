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

if not "x!versionOutput:Version 10.0=!"=="x%versionOutput%" (
    set operatingSystem=ten
    goto _select
)

if not "x!versionOutput:Version 6.3=!"=="x%versionOutput%" (
    set operatingSystem=eight
    goto _select
)

if not "x!versionOutput:Version 6.2=!"=="x%versionOutput%" (
    set operatingSystem=eight
    goto _select
)

if not "x!versionOutput:Version 6.1=!"=="x%versionOutput%" (
    set operatingSystem=seven
    goto _select
)

if not "x!versionOutput:Version 6.0=!"=="x%versionOutput%" (
    set operatingSystem=vista
    goto _select
)

if not "x!versionOutput:Version 5.2=!"=="x%versionOutput%" (
    set operatingSystem=xp
    goto _select
)

if not "x!versionOutput:Version 5.1=!"=="x%versionOutput%" (
    set operatingSystem=xp
    goto _select
)
endlocal
:_select
set googleChrome=
set firefox=
set java=
set adobeReader=
set googleDrive=
set shockwave=
set zip=
set all=
:_menu
cls
echo.
echo   Which components would you like to install?
echo     1  Google Chrome        6  Shockwave
echo     2  Firefox              7  7-Zip
echo     3  Java
echo     4  Adobe Reader         Q  [Quit]
echo     5  Google Drive         S  [Start]
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
if not "%shockwave%"=="" (
    echo       %shockwave%
)
if not "%zip%"=="" (
    echo       %zip%
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
    set shockwave=Shockwave
)
if %choice%==7 (
    set zip=7-Zip
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
if not "%shockwave%"=="" (
    echo     Shockwave...
    shockwave.exe
)
if not "%zip%"=="" (
    echo     7-Zip...
    zip.exe
)
echo.
echo   Default programs have been installed.
echo.
set /p var=%BS%  Press Enter to Exit: 
exit