# LansweeperVNC
Lansweeper action to deploy a temporary VNC server, connect, then after you disconnect, remove it, all with a single click.  This is useful for sharing a user's console screen for remote support.

It can also work without lansweeper via ASK.BAT

## To setup in Lansweeper:
1. Check to make sure you can access the computers you want to remote into via \\\\ComputerName\c$<br>
   This script depends on that access.

2. In Lansweeper, go to configuration, asset pages, add asset action<br>
Description = VNC<br>
Action = cmd.exe /K "{actionpath}vnc\vnc.bat {ipaddress} {actionpath}"

3. Download <a href="https://uvnc.com/downloads/ultravnc.html">UltraVNC</a> and copy winvnc.exe and vncviewer.exe and setcad.exe to:<br>
C:\Program Files (x86)\Lansweeper\Actions\vnc<br>
It probably works with other VNC flavors, but I haven't tested any.

4. Download <a href="https://learn.microsoft.com/en-us/sysinternals/downloads/psexec">psexec.exe</a> and move it to:<br>
C:\Program Files (x86)\Lansweeper\Actions\vnc

5. Copy these files from this repo to:<br>
C:\Program Files (x86)\Lansweeper\Actions\vnc<br>
options.vnc<br>
UltraVNC.ini<br>
vnc.bat<br>
wait.bat<br>

## To setup without Lansweeper:
1. Check to make sure you can access the computers you want to remote into via \\\\ComputerName\c$<br>
   This script depends on that access.

2. Create a new folder anywhere you want.
For example:<br>
C:\Program Files\ConsoleViewer\ <br>
C:\Users\username\desktop\ConsoleViewer\ <br>

3. Download <a href="https://uvnc.com/downloads/ultravnc.html">UltraVNC</a> and copy winvnc.exe and vncviewer.exe and setcad.exe to the folder you created in step 2:<br>
It probably works with other VNC flavors, but I haven't tested any.

4. Download <a href="https://learn.microsoft.com/en-us/sysinternals/downloads/psexec">psexec.exe</a> and move it to the folder you created in step 2

6. Copy ALL of the files from this repo to the folder you created in step 2.<br>

7. Optionally make a desktop shortcut to ask.bat
