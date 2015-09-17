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
programs.exe
pause
exit