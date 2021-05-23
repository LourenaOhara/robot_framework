*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    wait until page contains    Adicionado ao carrinho

Proceed to Cart
    click element    xpath=//span[contains(@class, 'huc-v2-view-cart')]