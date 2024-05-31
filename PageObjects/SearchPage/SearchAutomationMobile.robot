*** Settings ***
Documentation        Segala hal yg berkaitan dengan Search
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            SearchLocator.yaml

*** Keywords ****
Verify Home Screen Appears after Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
Click Search Menu
    Wait Until Element Is Visible     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
Input Flight Number
    [Arguments]                     ${flightnumber}
    Input Flight Number             locator=${flightnumber_input}            
Click Search Button 
    Click Element                   locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
Verify Invalid Search
    Page Should Contain Text        text="Please enter valid Flight Number"
Verify Valid Search
    Wait Until Element Is Visible        locator=//android.widget.TextView[@text="Departed"]




