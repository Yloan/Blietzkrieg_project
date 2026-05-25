@echo off
echo Installation de BLITZKRIEG...

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python n'est pas installer. Telechargement...
    curl -L https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe -o %TEMP%\python_installer.exe
    %TEMP%\python_installer.exe /quiet InstallAllUsers=0 PrependPath=1
    del %TEMP%\python_installer.exe
)

curl -L https://github.com/Yloan/Blietzkrieg_Game_final/archive/refs/heads/main.zip -o %TEMP%\blitzkrieg.zip
powershell -command "Expand-Archive '%TEMP%\blitzkrieg.zip' '%LOCALAPPDATA%'"
del %TEMP%\blitzkrieg.zip

cd %LOCALAPPDATA%\Blietzkrieg_Game_final-main
python -m venv .venv
.venv\Scripts\pip install colorama==0.4.6 pygame==2.6.1
echo Lancement du jeu...
.venv\Scripts\python src\main.py
pause
