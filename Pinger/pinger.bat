@echo off
chcp 65001
cls
:: goes to the "Texts" directory
cd Texts
::tell the user to set color
type welcome.txt
pause
cls
::shows the user color options
type colorlist.txt
set /p color=
pause
::changes the color
color %color%
cls
type title.txt
:: goes back to parent directory
cd ..
title Pinger
set /p ip=Enter the IP Address you want to ping: 
PING -t %ip% | FIND "TTL="
IF ERRORLEVEL 1 echo Ip is offline.
IF NOT ERRORLEVEL 1 echo Reply from %ip%.