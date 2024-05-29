*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${IVALID_PASSWORD}           abc1233333


*** Test Cases ***
User Should Be Able To Login Wait Valid Credential
    [Tags]        TC-001
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username         username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login

User Should Be Able To Login Wait Invalid Credential
    [Tags]    TC-002
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${INVALID_USERNAME} 
    Input User Password       password=${IVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Fail Login
    #Page Should Contain Text    text="Invalid username/password"
    ##Wait Until Page Contains    locator=//android.widget.Toast[@text="Invalid username/password"]

User Should Be Able To Login Wait Empty Password
    [Tags]    TC-003
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${VALID_USERNAME} 
    Input User Password       password=${EMPTY}
    Click Sign In Button On Login Screen
    Verify Fail Login

User Should Be Able To Login Wait Empty Username
    [Tags]    TC-004
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${EMPTY} 
    Input User Password       password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Fail Login

User Should Be Able To Login Wait Empty Credential
    [Tags]    TC-005
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${EMPTY} 
    Input User Password       password=${EMPTY}
    Click Sign In Button On Login Screen
    Verify Fail Login

User Should Be Able To Login Wait Wrong Username
    [Tags]    TC-006
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${INVALID_USERNAME} 
    Input User Password       password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Fail Login

User Should Be Able To Login Wait Wrong Password
    [Tags]    TC-007
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${VALID_USERNAME} 
    Input User Password       password=${IVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Fail Login