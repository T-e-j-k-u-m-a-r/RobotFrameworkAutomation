*** Settings ***
Documentation     Mastering the concept of Lists
Library           SeleniumLibrary
Library           Collections
Suite Teardown    No Operation

*** Variables ***
${app_url}              https://rahulshettyacademy.com/loginpagePractise/
${username}             rahulshettyacademy
${password}             learning
${product_name}         Blackberry
${username_textbox}     css:#username
${password_textbox}     css:#password
${sign_in_btn}          css:#signInBtn

*** Test Cases ***
Exploring the concept of Lists in Collection library
    Create webdriver and go to application url
    Add Button Based on Product Name

*** Keywords ***
Create webdriver and go to application url
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    modules=selenium
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Create Webdriver    Chrome
    Go To               ${app_url}
    Maximize Browser Window

Add Button Based on Product Name
    Input Text          ${username_textbox}        ${username}
    Input Password      ${password_textbox}        ${password}
    Click Button        ${sign_in_btn}

    ${products} =       Get WebElements     css:.card-title a
    ${index} =          Set Variable        1

    FOR    ${ele}    IN    @{products}
        # Ensure exact text match by stripping extra spaces
        Exit For Loop If   '${product_name}' == '${ele.text.strip()}'
        ${index} =   Evaluate    ${index} + 1
    END
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath://app-card[${index}]//div[1]//div[2]//button[1]
    Sleep         5s
    Click Element    xpath://app-card[${index}]//div[1]//div[2]//button[1]
    Sleep         10s
