*** Settings ***
Documentation   This is a challeng robot test
Resource    ../resources/frontofficeApp.robot
Resource    ../resources/common.robot
Test Setup      Begin The Test
Test Teardown       End of Test

*** Variables ***
${BROWSER} =    chrome
${URL} =    http://www.robotframeworktutorial.com/front-office/

*** Test Case ***
Should be log in website
    frontofficeApp.Search For Tab

Should be select the tab team and verify header
    frontofficeApp.Search For Tab
    frontofficeApp.Select Tab Team
    frontofficeApp.Check Header Team

    
