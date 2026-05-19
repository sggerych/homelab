```bat
@echo off

echo Starting Homepage...
cd /d C:\docker\homepage
docker compose up -d

echo Starting Uptime Kuma...
cd /d C:\docker\uptime-kuma
docker compose up -d

echo Starting Stirling PDF...
cd /d C:\docker\stirling-pdf
docker compose up -d

echo All services started!

pause
```
