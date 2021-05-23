*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${CART_MAIN_HEADING} =   xpath=//h1

*** Keywords ***
Verify Cart Page
    page should contain element    ${CART_MAIN_HEADING}
    element text should be    ${CART_MAIN_HEADING}   Carrinho de compras