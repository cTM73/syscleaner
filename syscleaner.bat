@echo off
title syscleaner
echo ********************************
echo ** Windows System Cleaner 1.0 **
echo ********************************
type splashes\splash1.txt
timeout 1 > nul                                 
echo (c) 2023 Colin Wiborg under GNU General Public License 3.0
timeout 2 > nul
:prompt
set /p action=What would you like to do? 1. Run all processes 2. Backup 3. Flush DNS 4. Clear Temp Files 5. Defrag 6. Windows Disk Cleanup 7. Restart System 8. Quit - 
if %action% == 1 start allprocesses.bat
if %action% == 2 start backup.bat
if %action% == 3 ipconfig /flushdns
if %action% == 4 del /q/f/s %TEMP%\*
if %action% == 5 start defrag.bat
if %action% == 6 cleanmgr /sagerun
if %action% == 7 shutdown /r
if %action% == 8 close
GOTO prompt
pause > nul

