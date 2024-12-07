@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
	title Valorant Cleaner Mhatt.zzz#0001
	taskkill /f /im ClientRiot.exe > nul
	cls
	echo.
	echo  -- Clearing MainDisk --
	timeout /t 2 >nul
	del /f "C:\Windows\win.ini"
	del /f "C:\Riot Games"
	del /f "C:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
	del /f "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
	del /f "C:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
	del /f "C:\Riot Games\Riot Client\UX\icudtl.dat"
	del /f "C:\Riot Games\Riot Client\UX\natives_blob.bin"
	del /f "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
	del /f "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
	del /f "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
	del /f "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
	del /f "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
	del /f "C:\Users\%username%\ntuser.ini"
	del /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
	del /f "C:\ProgramData\Riot Games"
	del /f "C:\System Volume Information\tracking.log"
	cls
	echo.
	echo  -- Clearing Possible SecondaryDisk --
	timeout /t 2 >nul
	del /f "D:\Windows\win.ini"
	del /f "D:\Riot Games"
	del /f "D:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
	del /f "D:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
	del /f "D:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
	del /f "D:\Riot Games\Riot Client\UX\icudtl.dat"
	del /f "D:\Riot Games\Riot Client\UX\natives_blob.bin"
	del /f "D:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
	del /f "D:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
	del /f "D:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
	del /f "D:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
	del /f "D:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
	del /f "D:\Users\%username%\ntuser.ini"
	del /f "D:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
	del /f "D:\ProgramData\Riot Games"
	del /f "D:\System Volume Information\tracking.log"
	cls
	echo.
	echo  -- System Clean --
	echo.
	echo.
	echo  Closing in 5 Seconds...
	timeout /t 5 >nul
	exit
) else (
    echo.
    echo.
    echo  No admin permissions.
    pause>nul
)