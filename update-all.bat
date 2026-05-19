```bat
@echo off

title Homelab Update

echo ====================================
echo         UPDATING HOMELAB
echo ====================================

echo.
echo Pulling latest GitHub changes...

cd /d %~dp0

git pull

echo.
echo Updating Docker containers...

docker compose pull

docker compose up -d

echo.
echo Restarting all services...

cd /d C:\docker\homepage
docker compose up -d

cd /d C:\docker\uptime-kuma
docker compose up -d

cd /d C:\docker\stirling-pdf
docker compose up -d

cd /d C:\docker\dozzle
docker compose up -d

cd /d C:\docker\proxy.home
docker compose up -d

echo.
echo ====================================
echo      HOMELAB UPDATED!
echo ====================================

pause
```
