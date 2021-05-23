*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/po/landingPage.robot
Resource   ../resources/po/cart.robot
Resource   ../resources/po/checkCart.robot
Resource   ../resources/po/product.robot
Resource   ../resources/po/searchResults.robot
Resource   ../resources/po/topNav.robot

*** Keywords ***
Search For Products
    landingPage.Load
    landingPage.Verify Page Loaded
    topNav.Enter Search Term
    topNav.Submit Search
    searchResults.Verify Search Completed
    
Select Products from Search Results
    searchResults.Click Product Link
    product.Verify Page Loaded

Add Products to Cart
    product.Add to Cart
    checkCart.Verify Product Added

Checking the cart
    checkCart.Proceed to Cart
    cart.Verify Cart Page