@echo off
set p=%2\vnc\
echo copying files...
md \\%1\c$\vnc
copy %p%winvnc.exe \\%1\c$\vnc\
copy %p%options.vnc \\%1\c$\vnc\
copy %p%ultravnc.ini \\%1\c$\vnc\
copy %p%setcad.exe \\%1\c$\vnc\
copy %p%wait.bat \\%1\c$\vnc\

echo installing vnc service...
%p%psexec -s \\%1 c:\vnc\winvnc.exe -install

echo wait...
%p%psexec -s \\%1 c:\vnc\wait.bat

echo starting viewer...
%p%vncviewer %1 /256colors /password 1221 /autoscaling /autoreconnect 1 /reconnectcounter 10

echo uninstalling vnc service...
%p%psexec -s \\%1 c:\vnc\winvnc.exe -uninstall

echo cleanup...
rd /s /q \\%1\c$\vnc\

exit
