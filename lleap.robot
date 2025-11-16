*** Settings ***
Documentation   LLEAP QA TEST AUTOMATION
Resource         mykeywords.robot

#Suite Setup     Run Keywords    Start Sikuli Process    AND Read Image From Path   AND Open LLEAP App
#Suite Teardown  Stop Remote Server

*** Test Cases ***
Launching And Configuring LLEAP Application
    Add Image Path  ${IMAGE_PATH}
    Open Application    ${APP_LOCATION}
    Deleting User Config File
    Navigate Buttons
    Extracting Log files
    Closing the LLEAP Application

# =============================== END OF CODE =========================================================
