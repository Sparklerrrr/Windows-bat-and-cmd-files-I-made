@e@echo off
setlocal enabledelayedexpansion

echo Enter the drive letter of the disk you want to check (e.g., C, D, E):
set /p drive_letter="Drive Letter: "

if exist !drive_letter!:\ (
    echo Drive !drive_letter! exists. Running chkdsk...
    chkdsk !drive_letter!:\ /f
) else (
    echo Drive !drive_letter! does not exist. Exiting...
    exit /b 1
)

echo.
echo Press any key to close this window...
timeout /t 10 /nobreak >nul
endlocal

