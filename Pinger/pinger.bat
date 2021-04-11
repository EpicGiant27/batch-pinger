@echo off
color 09
type title.txt
echo .
title Pinger
set /p ip=Enter the IP Address you want to 
ping %ip% -t