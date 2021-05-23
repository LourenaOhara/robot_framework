*** Settings ***
Documentation    This is some basic info about the whole suite
Resource  ../resources/amazonApp.robot
Resource  ../resources/common.robot
Test Setup      Begining The Test
Test Teardown       End of Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =  https://www.amazon.com.br
${SEARCH_TERM} =    Fone JBL


*** Test Cases ***
Logged out user should be able to serach for products
    amazonApp.Search For Products

Logged out user should be able to view a product        
    amazonApp.Search For Products
    amazonApp.Select Products from Search Results

Logged out user should be able to add product to cart
    amazonApp.Search For Products
    amazonApp.Select Products from Search Results
    amazonApp.Add Products to Cart

Logged out user should be able to check the cart
    amazonApp.Search For Products
    amazonApp.Select Products from Search Results
    amazonApp.Add Products to Cart
    amazonApp.Checking the cart