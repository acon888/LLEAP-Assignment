*** Settings ***
Documentation   LLEAP QA TEST AUTOMATION
Library     SikuliLibrary   mode=NEW
Library     Process

*** Variables ***
${IMAGE_PATH}   ${CURDIR}${/}images
${APP_LOCATION}     C:\\Program Files (x86)\\Laerdal Medical\\Laerdal Simulation Home\\LaunchPortal.exe



*** Keywords ***
Deleting User Config File
    Start Process   ${CURDIR}/script.bat

Read Image From Path
    Add Image Path  ${IMAGE_PATH}

Open LLEAP App
    Open Application    ${APP_LOCATION}

Navigate Buttons
    Set Min Similarity  0.6
    Click   lleap_btn.png
    #Sleep   10s
    Wait Until Screen Contain   add_license_later_btn.png       60
    Click   add_license_later_btn.png
    Wait Until Screen Contain   Local_comp_btn.png      60
    Click   Local_comp_btn.png
    Sleep   3s
    Wait Until Screen Contain   SimMan3GPlus.png        60
    Click   SimMan3GPlus.png
    Wait Until Screen Contain   continue_without_btn.png        60
    Click   continue_without_btn.png
    Wait Until Screen Contain   international_btn.png       60
    Click   international_btn.png
    sleep   3s
    Mouse Move Location     300    300
    Click   mm.png
    Click   healthy-patient.png
    Click   ok-btn.png
    Wait Until Screen Contain   start-session.png   60
    ${START_SESSION}=    Exists    start-session.png
    Run Keyword If    ${START_SESSION} == True  Click    start-session.png
    Run Keyword If    ${START_SESSION} == False  Click    start-session-hr.png
    Click   maximize.png
    Click   eye.png
    Click   closed.png
    Click   67.png
    Sleep   5s
    ${HR_IMAGE}=    Exists    hr.png
    Run Keyword If    ${HR_IMAGE} == True  Click   hr.png
    Run Keyword If    ${HR_IMAGE} == False  Click   hr-working.png
    Click   80.png
    Type With Modifiers     A   CTRL
    Type With Modifiers     100
    Click   hr-ok.png
    Click   coughing.png
    Sleep   2s
    Click   play.png
    Sleep   5s
    Click   x.png

Extracting Log files
    Open Application    Laerdal Simulation Home
#    Click           lleap-icon.png
    Wait Until Screen Contain     help_btn.png        5
    Right Click      help_btn.png   xOffset=0   yOffset=0
    Click           log.png
    Open Application    Laerdal Simulation Home
    Sleep    3s
   # Click           close.png
    #Log             Log files has extracted and saved in C:\Users\Public\Documents\Laerdal Report Zipped
Closing the LLEAP Application
    Close Application    LaunchPortal