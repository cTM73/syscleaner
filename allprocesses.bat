@echo off
title BACKUP
set /p drive=What drive or folder would you like to back up? - 
set /p destinationdrive=Where would you like to send the backup? (Please include at least one folder) - 
xcopy %drive% %destinationdrive% /w /v /q /f /s /e
title FLUSHDNS
ipconfig /flushdns
title TEMPFILES
del C:\Windows\Temp /s /q
title DEFRAG
set /p defragvol=What drive would you like to defragment?
defrag %defragvol% /u /v
title RESTART?
set /p restart=Restart? (y/n) - 
if %restart% == y shutdown /r
if %restart% == n 
pause > nul

