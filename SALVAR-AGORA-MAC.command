#!/bin/bash
cd "$(dirname "$0")"
echo "💾 Salvando na nuvem..."
git add .
git commit -m "save manual $(date)"
git pull --no-edit
git push
echo "✅ PRONTO! Salvo na nuvem."
sleep 3
