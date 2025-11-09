*** Settings ***
Library     SikuliLibrary   mode=NEW
Library     Process

*** Variables ***
${IMG_PATH}     ${CURDIR}${/}test-images


*** Test Cases ***
#Open Chrome Browser and click Search
#    Add Image Path      ${IMG_PATH}
#    Run Process     script.bat  timeout=1min
#    Click       search.png

#Calling a function
#    my_test_method.hello()

Open Batch File
    Run Process     ${CURDIR}/script.bat
