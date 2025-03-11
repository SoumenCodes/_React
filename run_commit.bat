@echo off
:: Load Git and Python paths explicitly
set PATH=%PATH%;C:\Program Files\Git\cmd
set PATH=%PATH%;C:\Users\ckryo\AppData\Local\Programs\Python\Python313

:: Navigate to repo
cd /d "C:\D Drive\auto-commits"

:: Run Python script with full paths
"C:\Users\ckryo\AppData\Local\Programs\Python\Python313\python.exe" "C:\D Drive\auto-commits\auto_commit.py"

:: Optional: Log output
if errorlevel 1 (
    echo [%date% %time%] FAILED >> "C:\D Drive\auto-commits\scheduler_log.txt"
) else (
    echo [%date% %time%] SUCCESS >> "C:\D Drive\auto-commits\scheduler_log.txt"
)