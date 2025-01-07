@echo off
REM Close existing Chrome instances
taskkill /F /IM chrome.exe /T > nul 2>&1

REM Wait a moment
ping -n 2 127.0.0.1 > nul

REM Launch Chrome with disabled timer throttling and the HTML file
start "" "%PROGRAMFILES%\Google\Chrome\Application\chrome.exe" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file:///%~dp0dmt346.html

exit