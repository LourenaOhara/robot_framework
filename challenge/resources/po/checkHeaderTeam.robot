*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${TEAM_HEADING} =     css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Check Heading Team
    wait until page contains element       ${TEAM_HEADING}
    ${ElementText} =  get text  ${TEAM_HEADING}
    should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true