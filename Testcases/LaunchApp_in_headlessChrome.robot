*** Settings ***
Documentation         Exploring the Robot Framework
Library               SeleniumLibrary

*** Variables ***
${browser}          headlesschrome
${url}              https://demo.automationtesting.in/Alerts.html

*** Test Cases ***
TC1: Exploring robotframework
        Launch the application
        Print the application url
        Print the application title


*** Keywords ***
Launch the application
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Wait Until Page Contains    Alerts

Print the application url
    ${current_url}=        Get Location
    Log To Console         Current URL: ${current_url}

Print the application title
    ${page_title} =         Get Title
    Log To Console         Current Title: ${page_title}


