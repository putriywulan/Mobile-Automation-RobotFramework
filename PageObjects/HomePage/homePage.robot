*** Settings ***
Documentation            Segala hal yang berkaitan dengan HomePage
Resource                 ../base.robot

*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible        locator=com.example.myapplication:id/imageView4


Click Sign In Button On Home Screen
    Click Element                    locator=com.example.myapplication:id/login


Verify Success Login
    Wait Until Element Is Visible    locator=com.example.myapplication:id/textView2


# *** Test Cases ***
# User should be able to login with valid credential
#     Open Flight Application
#     Verify Home Screen Appears
#     Click Sign In Button On Home Screen