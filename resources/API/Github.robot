*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library

*** Variables ***



*** Keywords ***
Check Github Username
    Create Session  my_github_session   http://api.github.com
    ${response} =  Get Request  my_github_session  users/robotframeworktutorial
    Should be equal as strings  ${response.status_code}  200
    ${json} =  Set Variable  ${response.json()}
    Should be equal as strings  ${json['login']}  robotframeworktutorial
    Log  ${json}

Display Emoji

    create session  my_github_session  http://api.github.com
    ${response} =  get request  my_github_session  emojis
    should be equal as strings  ${response.status_code}  200
    ${json} =    set variable  ${response.json()}
    ${emoji_url} =  set variable  ${json['aerial_tramway']}
    Log  ${json}






