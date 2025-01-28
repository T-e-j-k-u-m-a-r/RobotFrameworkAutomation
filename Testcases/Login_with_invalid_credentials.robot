*** Settings ***

Documentation  Login with invalid credentials

Library         SeleniumLibrary        screenshot_root_directory=./screenshots

Test Setup      Create WebDriver and open browser
Test Teardown   Close Browser

Resource        resource.robot

*** Variables ***
#local script level variable declaration for the locators

*** Test Cases ***
Login with invalid credentials and validate presence of error message

    Navigate to registration page
    maximize the browser window
    fill the login form     ${username}       ${invalid_password}
    click on login button
    wait until error message is displayed
    verify if the error message is valid


*** Keywords ***

wait until error message is displayed
    Wait Until Element Is Visible   ${error_message}

verify if the error message is valid

#Scope of the variable defined or used in this space is at local level
    ${actual_error_message_text}=  Get Text    ${error_message}
    Should Be Equal As Strings  ${actual_error_message_text}   Incorrect  username/password.
    Element Text Should Be  ${error_message}     Incorrect  username/password.
    Log To Console      The error message is: ${actual_error_message_text}






