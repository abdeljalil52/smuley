@echo off
echo Disabling Windows Update services and related settings...

:: Kill the SystemSettings process
taskkill /F /FI "IMAGENAME eq SystemSettings.exe"

:: Stop Windows Update services
net stop wuauserv
net stop UsoSvc

:: Modify registry to disable Windows Update
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f

:: Force Group Policy update
gpupdate /force

:: Reset SoftwareDistribution folder
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution

:: Restart Windows Update services
net start wuauserv
net start UsoSvc

:: Confirmation message
echo ============================================================
echo Windows Updates have been successfully disabled.
echo Developed by Smuley
echo ============================================================

pause
