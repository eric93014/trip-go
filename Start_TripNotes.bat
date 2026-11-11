@echo off
set "HTML_FILE=%~dp0index.html"

set "BROWSER_PATH="
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" set "BROWSER_PATH=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" set "BROWSER_PATH=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "BROWSER_PATH=%ProgramFiles%\Google\Chrome\Application\chrome.exe"

if "%BROWSER_PATH%"=="" (
    start "" "%HTML_FILE%"
    exit
)

start "" "%BROWSER_PATH%" --app="file:///%HTML_FILE:\=/%?v=29" --window-size=500,800
exit
