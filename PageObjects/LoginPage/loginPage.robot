*** Settings ***
Documentation        Segala hal yg berkaitan dengan login
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            login-page-locators.yaml

*** Keywords ***
Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}            text=${username}

Input User Password
    [Arguments]                      ${password}
    Input Password                   locator=${password_input}            text=${password}

Click Sign In Button On Login Screen
    Click Element                    locator=com.example.myapplication:id/signIn

Login Wait Valid Credential
    [Arguments]                      ${username}    ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username                   username=${username}
    Input User Password              password=${password}
    Click Sign In Button On Login Screen

Verify Fail Login
    Page Should Contain Text    text="Invalid username/password"
 
