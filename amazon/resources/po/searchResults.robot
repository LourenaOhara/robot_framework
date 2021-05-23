*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains    resultados para "${SEARCH_TERM}"

Click Product Link
    [Documentation]     Click in the product with the description: Fone de Ouvido Bluetooth 125TWS Truly JBL Rosa
    click element   xpath=//span[contains(@class, 'a-size-base-plus') and text() = 'Fone de Ouvido Bluetooth 125TWS Truly JBL Rosa']