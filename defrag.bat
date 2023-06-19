@echo off
title DEFRAG
set /p defragvol=What drive would you like to defragment?
defrag %defragvol% /u /v
title RESTART?
set /p restart=Restart? (y/n) - 
if %restart% == y shutdown /r
if %restart% == n 
pause > nul

