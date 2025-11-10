#*** Settings ***
#Library     SikuliLibrary   mode=NEW
#Library     Process
#
#*** Variables ***
#${IMG_PATH}     ${CURDIR}${/}test-images
#
#
#*** Test Cases ***
##Open Chrome Browser and click Search
##    Add Image Path      ${IMG_PATH}
##    Run Process     script.bat  timeout=1min
##    Click       search.png
#
##Calling a function
##    my_test_method.hello()
#
#Open Batch File
#    Run Process     ${CURDIR}/script.bat

#=============================================================


*** Settings ***
Documentation       This is just a test
Library         SikuliLibrary   mode=NEW
Library         Process

Suite Setup     Run Keywords    Start Sikuli Process    AND Read Image From Path   AND Open LLEAP App
Suite Teardown  Stop Remote Server

*** Variables ***
${IMAGE_PATH}   ${CURDIR}${/}images
${APP_LOCATION}     C:\\Program Files (x86)\\Laerdal Medical\\Laerdal Simulation Home\\LaunchPortal.exe

*** Test Cases ***
Test 1
    Deleting User Config File
    Navigate Buttons


*** Keywords ***
Deleting User Config File
    Start Process   ${CURDIR}/script.bat

Read Image From Path
    Add Image Path  ${IMAGE_PATH}

Open LLEAP App
    Open Application    ${APP_LOCATION}

Navigate Buttons
    Set Ocr Text Read   LLEAP - Instructor Application
    Click Text  LLEAP - Instructor Application
#    Click   lleap_btn.png
#    #Sleep   10s
#    Wait Until Screen Contain   add_license_later_btn.png       60
#    Click   add_license_later_btn.png
#    Wait Until Screen Contain   Local_comp_btn.png      60
#    Click   Local_comp_btn.png
#    Sleep   3s
#    Wait Until Screen Contain   SimMan3G_btn.png        60
#    Click   SimMan3G_btn.png
#    Wait Until Screen Contain   continue_without_btn.png        60
#    Click   continue_without_btn.png
#    Wait Until Screen Contain   international_btn.png       60
#    Click   international_btn.png
#    sleep   3s
#    Mouse Move Location     1500    1000
#    Click   mm.png
#    Click   healthy-patient.png
#    Click   ok-btn.png
#    Wait Until Screen Contain   start-session.png   10
#    Click   start-session.png
#    Click   maximize.png
#    Click   eye.png
#    Click   closed.png
#    Click   67.png
#    Sleep   2s
#    Click   coughing.png
#    Sleep   2s
#    Click   play.png
#    Sleep   5s
#    Click   x.png

Extracting Log files
    Click           lleap-icon.png
    Wait Until Screen Contain     help_btn.png        5
    Right Click      help_btn.png   xOffset=0   yOffset=0
    Click           log.png
    Wait Until Screen Contain       laerdal_report.png      300
    Click           close.png
    Log             Log files has extracted and saved in C:\Users\Public\Documents\Laerdal Report Zipped


