@echo off
color 3
echo.

net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution

echo.
echo ============================================================
echo Windows Updates have been successfully disabled.
echo Developed by Smuley
echo ============================================================
pause
