*** Settings ***
# digunakan untuk import file lain
#Library        AppiumLibrary
#Library        OperatingSystem
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Resource        ../PageObjects/SearchPage/SearchAutomationMobile.robot
Test Setup            Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${VALID_FLIGHT}              DA935

*** Test Cases ***
User Search Flight Invalid Flight Number
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username         username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Menu
    Input Flight Number              ${EMPTY}
    Click Search Button
    Verify Invalid Search

User Search Flight Invalid Flight Number
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username         username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Menu
    Input Flight Number              ${VALID_FLIGHT}
    Click Search Button
    Verify Valid Search
