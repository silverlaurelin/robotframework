*** Settings ***
Library  Selenium2Library

*** Variables ***

${BROWSER}

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  Chrome

End Web Test
    Close Browser