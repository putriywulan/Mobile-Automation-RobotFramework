*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APP_PACKAGE}        com.example.myapplication
${APP_ACTIVITY}       com.example.myapplication.MainActivity
${DEVICE_NAME}        Android Emulator
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   9.0
${APP_PATH}            http://localhost:4723/wd/hub
${USERNAME}            support@ngendigital.com
${PASSWORD}            abc123
${SEARCH_KEYWORD}      DA935

*** Test Cases ***
Login and Search
    [Documentation]    Test the search feature after logging in
    Open Application    ${APP_PATH}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Login To Application
    Perform Search
    Verify Search Results
    Close Application

*** Keywords ***
Login To Application
    [Documentation]    Log in to the application
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Element    id=loginButton

Perform Search
    [Documentation]    Perform a search after logging in
    Input Text    id=searchBox    ${SEARCH_KEYWORD}
    Click Element    id=searchButton

Verify Search Results
    [Documentation]    Verify that search results are displayed
    Page Should Contain Element    xpath=//div[@class='search-results']
