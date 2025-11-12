@echo OFF
REM reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 1 /f
REM gpupdate /force
REM robot script.bat && robotmetrics

CD "%USERPROFILE%\AppData\Local\Laerdal_Medical_A_S\InstructorApplication.exe_Url_m0k1hmqxt4hic433nxkre0orlakwh5uv\8.7.3.10398"
DEL user.config