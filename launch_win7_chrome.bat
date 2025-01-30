@echo off
REM Close existing Chrome instances
taskkill /F /IM chrome.exe /T > nul 2>&1

REM Wait a moment
ping -n 2 127.0.0.1 > nul

REM Check if the current Chrome path exists
if not exist "%PROGRAMFILES%\Google\Chrome\Application\chrome.exe" (
    start "" "c:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file:///%~dp0dmt346.html https://192.168.5.20:8443
) else (
    REM Launch Chrome with disabled timer throttling and the HTML file
    start "" "%PROGRAMFILES%\Google\Chrome\Application\chrome.exe" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file:///%~dp0dmt346.html https://192.168.5.20:8443
)

exit