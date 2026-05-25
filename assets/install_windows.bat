@echo off
echo Installation de BLITZKRIEG...

curl -L https://github.com/Yloan/Blietzkrieg_Game_final/archive/refs/heads/main.zip -o %TEMP%\blitzkrieg.zip
tar -xf %TEMP%\blitzkrieg.zip -C %LOCALAPPDATA%

del %TEMP%\blitzkrieg.zip
cd %LOCALAPPDATA%\Blietzkrieg_Game_final-main

python -m venv .venv
.venv\Scripts\pip install colorama==0.4.6 pygame==2.6.1

echo Lancement du jeu...
.venv\Scripts\python src\main.py
