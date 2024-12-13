@echo off
color 3
title Delete Temporary Files

echo.
echo [-] Deleting temporary files to free up space and improve performance...

:: Delete and recreate user temp folder
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y

:: Delete and recreate Windows Temp folder
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp

echo.
echo [+] Temporary files successfully deleted!
echo ==================================================
echo              Temporary File Cleaner
echo             Developed by Smuley
echo ==================================================
pause >nul
