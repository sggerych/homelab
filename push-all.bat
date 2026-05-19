```bat
@echo off

title Push Homelab To GitHub

echo ====================================
echo        PUSHING TO GITHUB
echo ====================================

cd /d %~dp0

echo.
echo Adding files...

git add .

echo.
set msg=auto update

echo.
echo Saving commit...

git commit -m "%msg%"

echo.
echo Uploading to GitHub...

git push

echo.
echo ====================================
echo          PUSH COMPLETE!
echo ====================================

pause
```
