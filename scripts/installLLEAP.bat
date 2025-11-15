@echo off
:: ================================================
:: Script Name:    InstallLLEAP.bat
:: Description:    Installs LLEAP Distribution application silently
:: Author:         Ariel Contreras
:: Created Date:   09-10-2025
:: Version:        1.0
:: ================================================

setlocal

:: === Configuration ===
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f"
gpupdate /force
set "folderPath=C:\TEMP"
set "downloadUrl=https://cdn.laerdal.com/downloads/f7618/Setup_LLEAP_8.7.3.exe"
set "fileName=Setup_LLEAP_8.7.3.exe"

:: === Create folder if it doesn't exist ===
if not exist "%folderPath%" (
    echo Creating folder: %folderPath%
    mkdir "%folderPath%"
) else (
    rmdir %folderPath% /s /q
	echo Creating NEW folder: %folderPath%
    mkdir "%folderPath%"
	echo "%folderPath%" folder created successfully!
	powershell -Command "Write-Host 'C:\TEMP folder created successfully!' -ForegroundColor Green"
)

:: === Download file using PowerShell ===
echo Downloading file...
powershell -Command "Invoke-WebRequest -Uri '%downloadUrl%' -OutFile '%folderPath%\%fileName%'"

echo Download complete: %folderPath%\%fileName%
powershell -Command "Write-Host 'Download Complete!' -ForegroundColor Green"
TIMEOUT /T 10

::==========================================
:: Cleaning Up Installed LLEAP            ==
::==========================================

CALL c:\scripts\UninstallLLEAP.bat

::=============================================
:: Installing the LLEAP Distribution        ===
::=============================================
CD \TEMP
powershell -Command "Write-Host 'This may take some time installing the LLEAP Distribution file, please wait...' -ForegroundColor Red"
START /WAIT Setup_LLEAP_8.7.3.exe /S /P
APPWIZ.CPL
powershell -Command "Write-Host 'Installation Complete!' -ForegroundColor Green"

pause
endlocal

:: ======================================= END OF CODE ===============================================================================