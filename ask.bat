@echo off
rem https://github.com/shippj/LansweeperVNC

set /P IP="Enter IP or computer name: "

echo copying files...
md \\%IP%\c$\vnc
copy winvnc.exe \\%IP%\c$\vnc\
copy options.vnc \\%IP%\c$\vnc\
copy ultravnc.ini \\%IP%\c$\vnc\
copy setcad.exe \\%IP%\c$\vnc\
copy wait.bat \\%IP%\c$\vnc\

echo installing vnc service...
psexec -s \\%IP% c:\vnc\winvnc.exe -install

echo wait...
psexec -s \\%IP% c:\vnc\wait.bat

echo starting viewer...
vncviewer %IP% /256colors /password 1221 /autoscaling /autoreconnect 1 /reconnectcounter 10

echo uninstalling vnc service...
psexec -s \\%IP% c:\vnc\winvnc.exe -uninstall

echo cleanup...
rd /s /q \\%IP%\c$\vnc\

exit
