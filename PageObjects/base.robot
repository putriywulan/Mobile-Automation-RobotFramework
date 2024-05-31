*** Settings ***
Library                  AppiumLibrary


*** Variables ***
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android
${UDID}                  emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application    ${REMOTE_URL}
    ...                 platformName=${platformName}
    ...                 udid=${UDID}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}


Close Flight Application
    Close Application                       