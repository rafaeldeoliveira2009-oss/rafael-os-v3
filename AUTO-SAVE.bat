@echo off
chcp 65001 >nul
cd /d "%%~dp0"
title ROBO DE SAVE - Nuvem LIGADA
color 0A
:loop
git add . >nul 2>&1
git commit -m "auto-save %24/06/2026% %16:01:44,45%" >nul 2>&1
git pull --no-edit >nul 2>&1
git push >nul 2>&1
echo [%16:01:44%] Salvo na nuvem. Proximo save em 5 min...
timeout /t 300 >nul
goto loop
