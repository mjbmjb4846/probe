@echo off
REM Close existing Edge instances
taskkill /F /IM msedge.exe /T > nul 2>&1

REM Wait a moment
ping -n 2 127.0.0.1 > nul

REM Launch Edge with disabled timer throttling and the HTML file
start "" "%PROGRAMFILES(X86)%\Microsoft\Edge\Application\msedge.exe" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file:///%~dp0dmt346.html

exit