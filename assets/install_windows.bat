@echo off
echo Installation de BLITZKRIEG...

curl -L https://github.com/Yloan/Blitzkrieg/archive/refs/heads/main.zip -o %TEMP%\blitzkrieg.zip
tar -xf %TEMP%\blitzkrieg.zip -C %LOCALAPPDATA%
del %TEMP%\blitzkrieg.zip

cd %LOCALAPPDATA%\Blitzkrieg-main
pip install colorama==0.4.6 pygame==2.6.1

echo Lancement du jeu...
python src\main.py
