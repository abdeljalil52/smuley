@echo off
color 3
title Timer Optimization Tool

echo.
echo [-] Disabling dynamic tick...
bcdedit /set disabledynamictick yes

echo.
echo [-] Disabling High Precision Event Timer (HPET)...
bcdedit /deletevalue useplatformclock

echo.
echo [-] Enabling synthetic timers...
bcdedit /set useplatformtick yes

echo.
echo [+] Timer optimizations have been successfully applied!
echo ==================================================
echo              Timer Optimization Tool
echo             Developed by Smuley
echo ==================================================
pause >nul
