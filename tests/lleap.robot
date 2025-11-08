*** Settings ***
Documentation   LLEAP QA Automation
Library         SikuliLibrary   mode=NEW
Suite Setup     Run Keywords    Start Sikuli Process    AND Read Image From Path   AND Open LLEAP App
Suite Teardown  Stop Remote Server

*** Variables ***
${IMAGE_PATH}   ${CURDIR}${/}images
${APP_LOCATION}     C:\\Program Files (x86)\\Laerdal Medical\\Laerdal Simulation Home\\LaunchPortal.exe
#${EXISTS}=    Run Keyword And Return Status    Exists    continue-without-btn.png


*** Test Cases ***
Launching And Configuring LLEAP Application
    Navigate Buttons

Extracting Log Files
    SKIP    Extracting Log files


*** Keywords ***
Read Image From Path
    Add Image Path  ${IMAGE_PATH}

Open LLEAP App
    Open Application    ${APP_LOCATION}

Navigate Buttons
    Click   lleap_btn.png
    #Sleep   10s
    Wait Until Screen Contain   add_license_later_btn.png       60
    Click   add_license_later_btn.png
    Sleep   5s
    Wait Until Screen Contain   Local_comp_btn.png      60
    Click   local_comp_btn.png
    Sleep   5s
    Wait Until Screen Contain   SimMan3G_btn.png        60
    Click   SimMan3G_btn.png
#    #Sleep   10s
    Wait Until Screen Contain   continue_without_btn.png        60
#    Run Keyword If  ${EXISTS} 1    continue_without_btn.png
    Click   continue_without_btn.png
    Wait Until Screen Contain   international_btn.png       60
    Click   international_btn.png
    sleep   3s
    Mouse Move Location     30      30
    Click   mm.png
    Click   healthy-patient.png
    Click   ok-btn.png
    Wait Until Screen Contain   start-session.png   10
    Click   start-session.png
    Click   maximize.png
    Click   eye.png
    Click   closed.png
    Click   67.png
    Sleep   2s
    Click   coughing.png
    Sleep   2s
    Click   play.png
    Sleep   5s
    Click   x.png






#Extracting Log files
#    Wait Until Screen Contain     help_btn.png        5
#    Right Click      help_btn.png   xOffset=0   yOffset=0
#    Click           log.png
#    Wait Until Screen Contain       laerdal_report.png      300
#    Click           close.png
#    Log             Log files has been extracted
    #This will open C:\Users\Public\Documents\Laerdal Report Zipped folder and the logs are saved from this folder
    # reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v PromptOnSecureDesktop /t REG_DWORD /d 0 /f ======== 1 to Enable 0 to disable