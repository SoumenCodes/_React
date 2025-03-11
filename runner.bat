@echo off
:: Full paths prevent errors
"C:\Users\ckryo\AppData\Local\Programs\Python\Python313\python.exe" "C:\D Drive\auto-commits\auto_commit.py"
if %errorlevel% neq 0 (
    echo [FAILED] %date% %time% >> "C:\D Drive\auto-commits\log.txt"
)