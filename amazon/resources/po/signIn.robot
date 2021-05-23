*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${SIGNIN_MAIN_HEADING} =    //h2

*** Keywords ***
Verify Page Load
    page should contain element ${SIGNIN_MAIN_HEADING}
    element text should be  ${SIGNIN_MAIN_HEADING}  Sign In

Login With Valid Credentials
    [Arguments]     ${username}     ${password}
    Fill "Email" Field  ${username}
    Fill "Password" Field   ${password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]     ${username}
    Log Filling Email field with        ${username}

Fill "Password" Field
    [Arguments]     ${password}
    Log Filling Password field with     ${password}

Click "Sign In" Button
    Log Clicking submit button