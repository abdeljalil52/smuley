@echo off
title Disable HPET
echo ==================================================
echo              Disable HPET and Optimize Timers
echo             Developed by SmuLeY
echo ==================================================

echo Disabling HPET settings...
bcdedit /deletevalue useplatformclock

echo.
echo Disabling dynamic tick (laptop power savings)...
bcdedit /set disabledynamictick yes

echo.
echo Enabling synthetic timers...
bcdedit /set useplatformtick yes

echo.
echo HPET has been successfully disabled and system timers optimized!
echo ==================================================
pause
