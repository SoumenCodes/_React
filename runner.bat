@echo off
:: SYSTEM account needs explicit paths
set PYTHON=C:\Program Files\Python312\python.exe
set GIT=C:\Program Files\Git\bin\git.exe
set REPO=C:\D Drive\auto-commits

cd /d "%REPO%"
"%PYTHON%" "%REPO%\auto_commit.py"