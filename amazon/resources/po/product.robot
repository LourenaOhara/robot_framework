*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains    Em estoque

Add to Cart
    click button    id=add-to-cart-button