@echo off
rem https://github.com/shippj/LansweeperVNC

cd c:\vnc

echo waiting on service to become usable...
:wait
rem timeout /t 1 /nobreak > nul
netstat -a -n | find "5900" | find "LISTENING" > netstat.txt
find "LISTENING" netstat.txt > nul
if %ERRORLEVEL% equ 1 goto wait
del netstat.txt
