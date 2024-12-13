@echo off
color 3
title Clear DNS Cache and Improve Ping

echo.
echo [-] Clearing DNS cache to improve network performance...
ipconfig /flushdns

echo.
echo [+] DNS cache successfully cleared!
echo ==================================================
echo              Clear DNS Cache Tool
echo             Developed by Smuley
echo ==================================================
pause >nul
