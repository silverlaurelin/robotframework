*** Settings ***
Library  Selenium2Library

*** Variables ***
${START_URL}

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com