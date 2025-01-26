*** Settings ***

Documentation  Validate error message during invalid login
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
#Global level variable declaration

${error_message}     css:div.alert.alert-danger.col-md-12 strong
${user_name}         id:username
${password}          id:password
${login_btn}         id:signInBtn
${app_url}           https://rahulshettyacademy.com/loginpagePractise/

*** Test Cases ***
Validate presence of error message during the invalid login scenario
    open the browser and launch the application url
    maximize the browser window
    fill the login form
    click on login button
    wait until error message is displayed
    verify if the error message is valid


*** Keywords ***
open the browser and launch the application url
    Create Webdriver    Chrome
    Go To   ${app_url}

maximize the browser window
    Maximize Browser Window

fill the login form
    Input Text  ${user_name}        Tejkumar        True
    Input Password  ${password}      test123     True

click on login button
    Click Button    ${login_btn}

wait until error message is displayed
    Wait Until Element Is Visible   ${error_message}

verify if the error message is valid

#Scope of the variable defined or used in this space is at local level
    ${actual_error_message_text}=  Get Text    ${error_message}
    Should Be Equal As Strings  ${actual_error_message_text}   Incorrect  username/password.
    Element Text Should Be  ${error_message}     Incorrect  username/password.
    Log To Console      The error message is: ${actual_error_message_text}






