@echo off
:: ================================================
:: Script Name:    UninstallLLEAP.bat
:: Description:    UnInstalls all LLEAP related applications silently
:: Author:         Ariel Contreras
:: Created Date:   09-10-2025
:: Version:        1.0
:: ================================================

echo ::=================================================
echo :: Uninstalling all applications link to LLEAP ====
echo ::=================================================

SET "Laerdal_3G_Network_Configuration_Tool=C:\Program Files (x86)\Laerdal Medical\3G Network Configuration\uninstall.exe"
SET "Laerdal_Documentation_Viewer_9=C:\Program Files (x86)\Laerdal Medical\Documentation Viewer\Uninstall.exe"
SET "Laerdal_Language_Selector_9=C:\Program Files (x86)\Laerdal Medical\Language Selector\Uninstall.exe"
SET "Laerdal_License_Manager_9=C:\Program Files (x86)\Laerdal Medical\License Manager\Uninstall.exe"
SET "Laerdal_Patient_Monitor_Distribution=C:\Program Files (x86)\Laerdal Medical\Patient Monitor\uninstall_pm_big.exe"
SET "Laerdal_SimDesigner=C:\Program Files (x86)\Laerdal Medical\SimDesigner\sd_uninstall.exe"
SET "Laerdal_Simulation_Home=C:\Program Files (x86)\Laerdal Medical\Laerdal Simulation Home\uninstall.exe"
SET "Laerdal_Simulator_Firmware_and_Network_Wizard=C:\Program Files (x86)\Laerdal Medical\Simulator System Update\uninstall.exe"
SET "LLEAP_Distribution=C:\Program Files (x86)\Laerdal Medical\Instructor Application\uninstall_ia_big.exe"

	IF EXIST "%Laerdal_3G_Network_Configuration_Tool%" (
    GOTO 1
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 2
)

:1
    
	cd "C:\Program Files (x86)\Laerdal Medical\3G Network Configuration"
	Start /wait uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_3G_Network_Configuration_Tool successfully uninstalled' -ForegroundColor Green"
	GOTO 2
	
:2
	IF EXIST "%Laerdal_Documentation_Viewer_9%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Documentation Viewer"
	Start /wait Uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_Documentation_Viewer_9 successfully uninstalled' -ForegroundColor Green"
	GOTO 3
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 3
)

:3
	IF EXIST "%Laerdal_Language_Selector_9%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Language Selector"
	Start /wait Uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_Language_Selector_9 successfully uninstalled!' -ForegroundColor Green"
	GOTO 4
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 4
)

:4
	IF EXIST "%Laerdal_License_Manager_9%" (
    cd "C:\Program Files (x86)\Laerdal Medical\License Manager"
	Start /wait Uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_License_Manager_9 successfully uninstalled!' -ForegroundColor Green"
	GOTO 5
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 5
)

:5
	IF EXIST "%Laerdal_Patient_Monitor_Distribution%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Patient Monitor\"
	Start /wait uninstall_pm_big.exe /S
	powershell -Command "Write-Host 'Laerdal_Patient_Monitor_Distribution successfully uninstalled!' -ForegroundColor Green"
	GOTO 6
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 6
)

:6
	IF EXIST "%Laerdal_SimDesigner%" (
    cd "C:\Program Files (x86)\Laerdal Medical\SimDesigner\"
	Start /wait sd_uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_SimDesigner successfully uninstalled!' -ForegroundColor Green"
	GOTO 7
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 7
)

:7
	IF EXIST "%Laerdal_Simulation_Home%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Laerdal Simulation Home\"
	Start /wait uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_Simulation_Home successfully uninstalled!' -ForegroundColor Green"
	GOTO 8
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 8
)

:8
	IF EXIST "%Laerdal_Simulator_Firmware_and_Network_Wizard%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Simulator System Update\"
	Start /wait uninstall.exe /S
	powershell -Command "Write-Host 'Laerdal_Simulator_Firmware_and_Network_Wizard successfully uninstalled!' -ForegroundColor Green"
	GOTO 9
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO 9
)

:9
	IF EXIST "%LLEAP_Distribution%" (
    cd "C:\Program Files (x86)\Laerdal Medical\Instructor Application\"
	Start /wait uninstall_ia_big.exe /S
	powershell -Command "Write-Host 'LLEAP_Distribution successfully uninstalled!' -ForegroundColor Green"
	GOTO EndScript
) ELSE (
    powershell -Command "Write-Host 'File not found!' -ForegroundColor Red"
	GOTO EndScript
)



:EndScript
    powershell -Command "Write-Host 'All LLEAP applications successfully uninstalled!!!' -ForegroundColor Green"

:: ============================= END OF CODE =====================================================================
