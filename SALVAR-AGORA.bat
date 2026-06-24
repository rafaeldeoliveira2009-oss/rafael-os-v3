@echo off
chcp 65001 >nul
cd /d "%%~dp0"
echo Salvando na nuvem...
git add .
git commit -m "save manual %24/06/2026% %16:01:57,68%"
git pull --no-edit
git push
echo PRONTO! Salvo na nuvem.
timeout /t 5 >nul
