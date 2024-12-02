@echo off
title Delete Temporary Files
echo ==================================================
echo              Temporary File Cleaner
echo             Developed by SmuLeY
echo ==================================================

:: Delete and recreate user temp folder
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y

:: Delete and recreate Windows Temp folder
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp

pause
