*** Settings ***
# digunakan untuk import file lain
#Library        AppiumLibrary
#Library        OperatingSystem
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Resource        ../PageObjects/BookFlight-ONEWAY/BookFlight-OneWay.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${INVALID_PASSWORD}          abc1233333

*** Test Cases ***
User Flight From New York to London
    #Open Flight Application
    Verify Home Screen Appears
    Click Sign in Button on Home Screen
    Input Username        username=${VALID_USERNAME}
    Input User Password   password=${VALID_PASSWORD}
    Click Sign in Button on LOGIN Screen
    Verify Home Screen Appears
    Verify Home Screen Appears after Login
    Click Book Menu
    Verify BOOK page Appears
    Choose FROM CITY - New York
    Choose TO CITY - London
    Choose START DATE
    Choose END DATE
    Choose FLIGHT ONLY
    Click Book Button
    Verify Confirm Book Page
    Choose Price
    Click Confirm
    Verify Reservation Number Page