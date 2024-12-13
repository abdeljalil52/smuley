@echo off
echo Cleaning temporary directories...

:: Clean user-specific temp folder
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y

:: Clean system-wide temp folder
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y

echo Temp directories cleaned successfully.

:: Easy to spot message
echo ============================================================
echo This script was Developed by Smuley!
echo ============================================================

pause
