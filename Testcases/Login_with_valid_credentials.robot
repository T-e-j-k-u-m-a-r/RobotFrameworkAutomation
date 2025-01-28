*** Settings ***

Documentation           Login with valid credentials
Library                 SeleniumLibrary     screenshot_root_directory=./screenshots

Test Setup              Create WebDriver and open browser
Test Teardown           Close Browser

Resource            resource.robot

*** Variables ***
#Local script level variables

*** Test Cases ***
Login test with valid login credentials

    maximize the browser window
    Navigate to registration page
    fill the login form     ${username}        ${valid_password}
    click on login button
    wait untill the checkout menu is visible
    print the message that login is success

*** Keywords ***


