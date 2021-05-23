*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begining The Test
    open browser    about:blank     ${BROWSER}


End of Test
    close browser