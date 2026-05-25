#!/bin/bash
echo "Installation de BLITZKRIEG..."

curl -L https://github.com/Yloan/Blietzkrieg_Game_final/archive/refs/heads/main.zip -o /tmp/blitzkrieg.zip
unzip -o /tmp/blitzkrieg.zip -d ~/Library/Application\ Support/

rm /tmp/blitzkrieg.zip
cd ~/Library/Application\ Support/Blietzkrieg_Game_final-main

python3 -m venv .venv
.venv/bin/pip install colorama==0.4.6 pygame==2.6.1 -q

echo "Lancement du jeu..."
.venv/bin/python3 src/main.py
