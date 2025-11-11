*** Settings ***
Documentation   LLEAP QA TEST AUTOMATION
Resource         mykeywords.robot

Suite Setup     Run Keywords    Start Sikuli Process    AND Read Image From Path   AND Open LLEAP App
Suite Teardown  Stop Remote Server

*** Test Cases ***
Launching And Configuring LLEAP Application
    Deleting User Config File
    Navigate Buttons
    Extracting Log files
    Closing the LLEAP Application
