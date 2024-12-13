@echo Off
color 3
echo.

echo [-] Cleaning Log files
echo.

cd/
del *.log /a /s /q /f

echo [+] Cleaned Log Files
echo.

echo [-] Cleaning Temp files
echo.

RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
echo [+] Cleaned Temp files

echo.
echo [-] Flushing DNS Cache
ipconfig /flushdns

echo.
echo [-] Windows Update Settings & Cleaning Cache
echo.

net stop wuauserv
net stop UsoSvc
gpupdate /force
rd /s /q "C:\Windows\SoftwareDistribution"
md "C:\Windows\SoftwareDistribution"
net start wuauserv
net start UsoSvc

echo [+] Deleted Windows Update Cache and useless files

echo.
echo [-] Cleaning Disk
cleanmgr /sagerun:1

echo.
echo [+] Cleaned All files
echo.

echo ============================================================
echo System cleaning and optimization tasks completed.
echo Developed by Smuley
echo ============================================================
pause >nul
