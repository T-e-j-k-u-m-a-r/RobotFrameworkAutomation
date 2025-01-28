*** Settings ***
Documentation           Verify the product search functionality

Library                 SeleniumLibrary        screenshot_root_directory=./screenshots

Test Setup              Create WebDriver and open browser
Test Teardown           Close Browser

Resource                resource.robot

*** Variables ***


*** Test Cases ***
Product search functionality

    Navigate to registration page
    maximize the browser window
    fill the login form     ${username}        ${valid_password}
    click on login button
    wait untill the checkout menu is visible


*** Keywords ***
