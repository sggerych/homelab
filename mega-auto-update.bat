@echo off
title Mega Homelab Auto Update

echo ====================================
echo       MEGA HOMELAB AUTO UPDATE
echo ====================================

cd /d C:\docker

echo.
echo [1/6] Pulling latest GitHub changes...
git pull

echo.
echo [2/6] Updating Homepage...
cd /d C:\docker\homepage
docker compose pull
docker compose up -d

echo.
echo [3/6] Updating Uptime Kuma...
cd /d C:\docker\uptime-kuma
docker compose pull
docker compose up -d

echo.
echo [4/6] Updating Stirling PDF...
cd /d C:\docker\stirling-pdf
docker compose pull
docker compose up -d

echo.
echo [5/6] Updating Dozzle...
cd /d C:\docker\dozzle
docker compose pull
docker compose up -d

echo.
echo Updating Nginx Proxy Manager...
cd /d C:\docker\proxy.home
docker compose pull
docker compose up -d

echo.
echo [6/6] Saving changes to GitHub...
cd /d C:\docker
git add .
git commit -m "auto update homelab"
git push

echo.
echo Opening Homepage...
start http://home.home

echo.
echo ====================================
echo       MEGA UPDATE COMPLETE
echo ====================================

pause