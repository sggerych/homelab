```bat
@echo off

echo Cloning homelab from GitHub...

cd /d C:\

git clone https://github.com/sggerych/homelab.git

echo.
echo Starting containers...

cd /d C:\homelab

call start-all.bat

echo.
echo Homelab installed!

pause
```
