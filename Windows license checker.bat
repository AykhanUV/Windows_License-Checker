@echo off
title Win License Checker by AykhanUV
color 3
cls
echo.
echo.    [1] Check License Status
echo.    [2] Check Activation Expiry
echo.
choice /C:12 /N /M "Choose an option: "

if errorlevel 2 goto :ActivationExpiry
if errorlevel 1 goto :LicenseStatus

goto :eof

:LicenseStatus
cls
echo Checking license status...
:: Check activation status
cscript /nologo %SystemRoot%\System32\slmgr.vbs /dli
pause
goto :eof

:ActivationExpiry
cls
echo Checking activation expiry...
:: Check activation expiry status
cscript /nologo %SystemRoot%\System32\slmgr.vbs /xpr
pause
goto :eof
