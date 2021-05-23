*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Begin The Test
    open browser    about:blank     ${BROWSER}
    maximize browser window

End of Test
    close browser