*** Settings ***
Documentation        Segala hal yg berkaitan dengan Book Flight - ONE WAY
Resource             ../base.robot
Resource             ../HomePage/homePage.robot

*** Keywords ***
Verify Home Screen Appears after Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Click Book Menu
    Wait Until Element Is Visible     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]
#//android.widget.Button[@resource-id="com.example.myapplication:id/book"]
Verify BOOK page Appears
    Wait Until Element Is Visible    locator=//android.support.v7.app.ActionBar.Tab[@content-desc="One Way"]

#Choose ONE WAY Button
#   Wait Until Element Is Visible     locator=//android.support.v7.app.ActionBar.Tab[@content-desc="One Way"]

#Verify Choose ONE WAY 
#   Wait Until Element Is Visible    locator=//android.widget.TextView[@text="ONE WAY"]
   
Choose FROM CITY - New York
    Click Element     locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Click Element     locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]

Choose FROM CITY - Chicago
    Click Element     locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Click Element     locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Choose FROM CITY - Toronto
    Click Element     locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Click Element     locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]

Choose TO CITY - London
    Click Element                   locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Click Element                   locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]

Choose TO CITY - Paris
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]

Choose TO CITY - Ottawa
    Click Element                   locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Click Element                   locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]

Choose START DATE
    Click Element               locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element               locator=//android.view.View[@content-desc="01 Agustus 2019"]
    Click Element               locator=//android.widget.Button[@resource-id="android:id/button1"]

Choose END DATE
    Click Element               locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Click Element               locator=//android.view.View[@content-desc="02 Agustus 2019"]
    Click Element               locator=//android.widget.Button[@resource-id="android:id/button1"]

Choose FLIGHT ONLY
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Choose FLIGHT+HOTEL
    Click Element    locator=///android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

Choose +/-1 Day
    Click Element    locator=//android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]

Click Book Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Confirm Book Page
    Element Should Be Visible    locator=//android.widget.Button[@text="Start/Return"]

Choose Price
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Click Confirm
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Reservation Number Page
    Element Should Be Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]