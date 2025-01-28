*** Settings ***
Documentation  List concepts

Library             SeleniumLibrary
Library             Collections

*** Variables ***

${application_url}          https://automationexercise.com/
${EXPECTED_TEXT}            automationexercise
${home_page_all_menu}       css:div.shop-menu li a

*** Test Cases ***
List Concepts
    Create webdriver and open the web application
    maximize the browser window
    Verify all the menu items are visible
    Verify the application URL contains excercise in it
    Verify the web page title contains Automtion Exercise
    Get all the menu names text value and store in to a list and print them all
    Close the browser

*** Keywords ***
Create webdriver and open the web application
    Create Webdriver        Chrome
    Go To                   ${application_url}

maximize the browser window
    Maximize Browser Window

Verify all the menu items are visible
     Wait Until Element Is Visible    ${home_page_all_menu}    timeout=10s

Verify the application URL contains excercise in it
#    ${current_url} = Get Location
    Location Should Contain         ${EXPECTED_TEXT}


Verify the web page title contains Automtion Exercise
    Title Should Be         Automation Exercise

Get all the menu names text value and store in to a list and print them all
    ${elements}=            Get WebElements       ${home_page_all_menu}
    @{actual_list}=          Create List
    @{expected_list}=         Create List    home    products    cart    signup / login    test cases    api testing    video tutorials    contact us

    ${total}=       Get Length         ${elements}

    Log To Console             Total elements found: ${total}

    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        Append To List           ${actual_list}          ${text}
    END

    Log To Console    Actual List: ${actual_list}
    Log To Console    Expected List: ${expected_list}

    Lists Should Be Equal       ${actual_list}      ${expected_list}

Close the browser
    Close Browser

