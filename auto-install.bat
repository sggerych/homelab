```bat
@echo off

title Homelab Auto Install

echo ====================================
echo        HOMELAB INSTALLER
echo ====================================

echo.
echo Checking Git...

git --version >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo Git is NOT installed!
    echo Install Git first:
    echo https://git-scm.com/download/win
    pause
    exit
)

echo.
echo Git OK!

echo.
echo Checking Docker...

docker --version >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo Docker Desktop is NOT installed!
    echo Install Docker Desktop first:
    echo https://www.docker.com/products/docker-desktop/
    pause
    exit
)

echo.
echo Docker OK!

echo.
echo Cloning homelab...

cd /d C:\

IF EXIST C:\homelab (
    echo.
    echo Homelab folder already exists.
) ELSE (
    git clone https://github.com/sggerych/homelab.git
)

echo.
echo Starting containers...

cd /d C:\homelab

call start-all.bat

echo.
echo Opening Homepage...

timeout /t 5 >nul

start http://home.home

echo.
echo ====================================
echo      HOMELAB INSTALLED!
echo ====================================

pause
```
