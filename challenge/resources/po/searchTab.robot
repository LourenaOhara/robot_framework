*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${TAB_TEAM} =     xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Click Tab Team
    click element   ${TAB_TEAM}
    Sleep   4s
