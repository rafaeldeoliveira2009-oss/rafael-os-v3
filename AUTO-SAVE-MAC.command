#!/bin/bash
cd "$(dirname "$0")"
echo "🤖 ROBO DE SAVE - Nuvem LIGADA (nao feche para manter o auto-save)"
while true; do
  git add . >/dev/null 2>&1
  git commit -m "auto-save $(date)" >/dev/null 2>&1
  git pull --no-edit >/dev/null 2>&1
  git push >/dev/null 2>&1
  echo "[$(date '+%H:%M:%S')] Salvo na nuvem. Proximo save em 5 min..."
  sleep 300
done
