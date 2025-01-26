*** Settings ***
Documentation  Register a new user

Library  SeleniumLibrary        screenshot_root_directory=./screenshots

Test Setup          Open browser
Test Teardown       Close Browser
Resource            resource.robot

*** Variables ***
${signup_title_expected}         Automation Exercise - Signup
${name}                          Tejkumar
${email_address}                 Tejkumar@testing.com

*** Test Cases ***
Register a new user to the application

    Maximize the browser window
    Navigate to the application page
    Verify that home page is visible successfully
    Click on 'Signup/Login' button
    Verify 'New User Signup!' is visible
    Enter name and email address
    Click 'Signup' button
    Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Fill details: Title, Name, Email, Password, Date of birth
    Select checkbox 'Sign up for our newsletter!'
    Select checkbox 'Receive special offers from our partners!'
    Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click 'Create Account button'
    Verify that 'ACCOUNT CREATED!' is visible
    Click 'Continue' button
    Verify that 'Logged in as username' is visible
    Click 'Delete Account' button
    Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

*** Keywords ***
Open browser
        Create Webdriver    Chrome

Maximize the browser window
        Maximize Browser Window

Navigate to the application page
    Go To        http://automationexercise.com

Verify that home page is visible successfully
    Element Should Be Visible       ${home_menu}

Click on 'Signup/Login' button
    Click Element       ${signup_login_menu}

Verify 'New User Signup!' is visible
    Element Should Be Visible       ${new_user_signup}

Enter name and email address
    Input Text      ${name_input_text_box}      ${name}
    Input Text      ${new_email_address_signup_screen_text_box}     ${email_address_value}

Click 'Signup' button
    Click Element       ${signup_button}

Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Element Should Be Visible       ${enter_account_information}

Fill details: Title, Name, Email, Password, Date of birth
    Click Element       ${title_mr_radio_button}

    Input Password      ${password_from_edit_information_page_text_box}         ${password}

    Click Element       ${dob_day}

    Click Element       ${dob_day_value}

    Click Element       ${dob_month}

    Click Element       ${dob_month_value}

    Click Element       ${year}

    Click Element       ${year_value}


Select checkbox 'Sign up for our newsletter!'
    Click Element       ${sign_up_for_newsletter_checkbox}


Select checkbox 'Receive special offers from our partners!'
    Click Element       ${sing_up_for_recieve_special_offers_checkbox}
    Sleep               4s


Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Input Text          ${first_name_text_box}      ${first_name_value}
    Sleep               2s

    Input Text          ${last_name_text_box}       ${last_name_value}
    Sleep               2s

    Input Text          ${company_textbox}          ${company_name_value}
    Sleep               2s

    Input Text          ${address_textbox}          ${address_value}
    Sleep               2s

    Input Text          ${address2_textbox}         ${address2_value}
    Sleep               2s

    Click Element       ${country_dropdown_menu}
    Sleep               2s

    Click Element       ${canada_country_drop_down_value}
    Sleep               2s

    Input Text          ${state_textbox}            ${state_value}
    Sleep               2s

    Input Text          ${city_textbox}             ${city_value}
    Sleep               2s

    Input Text          ${zip_code_textbox}         ${zipcode_value}
    Sleep               2s

    Input Text          ${mobile_number_textbox}    ${mobilenumber_value}
    Sleep               2s


Click 'Create Account button'
    Click Element       ${create_account_button}
    Sleep               2s


Verify that 'ACCOUNT CREATED!' is visible
    Element Should Be Visible       ${account_created_confirmation}
    Element Should Be Visible       ${congratulations_message_on_account_creation_message}

Click 'Continue' button
    Click Element       ${continue_button}
    Sleep               2s


Verify that 'Logged in as username' is visible
    Element Should Be Visible       ${logout_menu}


Click 'Delete Account' button
    Click Element       ${delete_account_menu}
    Sleep               2s

Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
    Element Should Be Visible       ${account_deleted_confirmation}
    Element Should Be Visible       ${account_deleted_confirmation_message}
    Sleep               5s











































