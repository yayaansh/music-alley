@echo off
title Music Alley
cd /d "%~dp0"
echo.
echo  Music Alley is starting. Keep this window open while you play.
echo.
echo  On this computer:  http://localhost:8765
for /f "tokens=14" %%a in ('ipconfig ^| findstr /c:"IPv4"') do echo  On the iPad (same Wi-Fi):  http://%%a:8765
echo.
start "" "http://localhost:8765/"
python -m http.server 8765 --bind 0.0.0.0
