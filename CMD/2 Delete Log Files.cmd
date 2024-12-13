@echo off
echo Deleting .log files...

:: Navigate to the root directory
cd /

:: Delete all .log files
del *.log /a /s /q /f

:: Easy to spot message
echo ============================================================
echo All .log files deleted successfully.
echo Developed by Smuley
echo ============================================================

pause
