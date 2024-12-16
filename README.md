# LansweeperVNC
Lansweeper action to deploy a temporary VNC server, connect, then after you disconnect, remove it, all with a single click.  This is useful for sharing a user's console screen for remote support.

It can also work without lansweeper via ASK.BAT

## To setup in Lansweeper:
1. Check to make sure you can access the computers you want to remote into via \\ComputerName\c$
   This script depends on that access.

2. In Lansweeper, go to configuration, asset pages, add asset action
Description = VNC
Action = cmd.exe /K "{actionpath}vnc\vnc.bat {ipaddress} {actionpath}"

3. Download UltraVNC and copy winvnc.exe and vncviewer.exe and setcad.exe to:
C:\Program Files (x86)\Lansweeper\Actions\vnc
It probably works with other VNC flavors, but I haven't tested any.

4. Download psexec.exe and move it to:
C:\Program Files (x86)\Lansweeper\Actions\vnc

5. Copy these files from this repo to:
C:\Program Files (x86)\Lansweeper\Actions\vnc
options.vnc
UltraVNC.ini
vnc.bat
wait.bat
