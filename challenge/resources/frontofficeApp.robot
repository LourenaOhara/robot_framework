*** Settings ***
Library    SeleniumLibrary
Resource   ./po/ladingPage.robot
Resource   ./po/searchTab.robot
Resource   ./po/checkHeaderTeam.robot

*** Keywords ***
Search For Tab
    ladingPage.Load
    ladingPage.Verify Page Loaded

Select Tab Team
    searchTab.Click Tab Team

Check Header Team
    checkHeaderTeam.Check Heading Team