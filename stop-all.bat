```bat
@echo off

echo Stopping Homepage...
cd /d C:\docker\homepage
docker compose down

echo Stopping Uptime Kuma...
cd /d C:\docker\uptime-kuma
docker compose down

echo Stopping Stirling PDF...
cd /d C:\docker\stirling-pdf
docker compose down

echo All services stopped!

pause
```
