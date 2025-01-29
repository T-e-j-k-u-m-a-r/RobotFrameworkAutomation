*** Settings ***

Documentation  : Resource file to store all the global variables, keywords

*** Variables ***

#valid and invalid scenario based variables
${error_message}              css:div.alert.alert-danger.col-md-12 strong
${user_name_text_box}         id:username
${password_text_box}          id:password
${login_btn}                  id:signInBtn
${automation_practise_login_btn}        css:button[data-qa='login-button']


#test data for form filling for creation of new user
${automation_practise_email_id}         connect.tejkumar@gmail.com
${automation_practise_password}         password
${name_value}                           TestingUser
${email_address_value}                  TestingUser@mailinator.com
${username}                             rahulshettyacademy
${password}                             pass@123
${valid_password}                       learning
${invalid_password}                     learning@123
${registration_app_url}                 https://rahulshettyacademy.com/loginpagePractise/
${automation_practise_url}              http://automationexercise.com

#sign up elements
${signup_user_name}                 form[action="/signup"] input[data-qa="signup-name"]
${signup_email_address}             form[action="/signup"] input[data-qa="signup-email"]

${first_name_value}               TestingUser_FN
${last_name_value}                TestingUser_LN
${company_name_value}             Testing Academy
${address_value}                  Door #1234, 3rd Floor, M.G Road, Bangalore
${address2_value}                 Door #5678, 4th Floor, N.G Road, Bihar
${state_value}                    Karnataka
${city_value}                     Bengalore
${zipcode_value}                  560011
${mobilenumber_value}             9988001122

#Login page screen elements
${registration_app_url}     http://automationexercise.com
${home_menu}                css:div.container div.shop-menu a:nth-of-type(1)
${signup_login_menu}        xpath://a[normalize-space()='Signup / Login']
${new_user_signup}          xpath://h2[normalize-space()='New User Signup!']

#Sign up form screen elements
${name_input_text_box}                                css:form[method="POST"]>input[placeholder="Name"]
${new_email_address_signup_screen_text_box}           css:form[method="POST"]>input[placeholder="Email Address"][data-qa="signup-email"]
${signup_button}                                      xpath://button[normalize-space()='Signup']
${enter_account_information}                          xpath://b[normalize-space()='Enter Account Information']

#Enter account information screen elements
${title_mr_radio_button}                                    css:#id_gender1
${name_from_edit_information_page_text_box}                 xpath://input[@id='name']
${email_from_edit_information_page_text_box}                xpath://input[@id='email']
${password_from_edit_information_page_text_box}             xpath://input[@id='password']
${dob_day}                                                  css:#days
${dob_month}                                                css:#months
${year}                                                     css:#years
${sign_up_for_newsletter_checkbox}                          css:div.checkbox span input[type='checkbox'][id='newsletter']
${sing_up_for_recieve_special_offers_checkbox}              css:div.checkbox span input[type='checkbox'][id='optin']


#Date of birth dropdown values
${dob_day_value}                                css:select[id='days'] option[value='5']
${dob_month_value}                              css:select[id='months'] option[value='5']
${year_value}                                   css:select[id='years'] option[value='2015']


#Address information
${first_name_text_box}                                  css:#first_name
${last_name_text_box}                                   css:#last_name
${company_textbox}                                      css:#company
${address_textbox}                                      css:#address1
${address2_textbox}                                     css:#address2
${country_dropdown_menu}                                xpath://select[@id='country']
${canada_country_drop_down_value}                       xpath://select[@id='country']//option[@value="Canada"]
${state_textbox}                                                css:#state
${city_textbox}                                                 css:#city
${zip_code_textbox}                                             xpath://input[@id='zipcode']
${mobile_number_textbox}                                        css:#mobile_number
${continue_button}                                      xpath://a[normalize-space()='Continue']
${create_account_button}                                xpath://button[normalize-space()='Create Account']


#Account created page
${account_created_confirmation}                             xpath://b[normalize-space()='Account Created!']
${congratulations_message_on_account_creation_message}      xpath://p[contains(text(),'Congratulations! Your new account has been success')]

#Home page screen elements
${logout_menu}                                  xpath://a[normalize-space()='Logout']
${delete_account_menu}                          xpath://a[normalize-space()='Delete Account']
${account_deleted_confirmation}                 xpath://b[normalize-space()='Account Deleted!']
${account_deleted_confirmation_message}         xpath://p[normalize-space()='Your account has been permanently deleted!']
${checkout_menu}                                css:.nav-link.btn.btn-primary

#Product page locators
${mens_product_one}                             Grunt Blue Slim Fit Jeans
${product_menu}                                 xpath://a[@href='/products']
${search_inputbox}                              xpath://input[@id='search_product']
${submit_search_button}                         xpath://button[@id='submit_search']
${searched_product_text}                        xpath://h2[normalize-space()='Searched Products']
${add_to_cart_btn}                              xpath:(//a[@class='btn btn-default add-to-cart'][normalize-space()='Add to cart'])[2]
${product_added_to_cart_element}                xpath://p[normalize-space()='Your product has been added to cart.']
${continue_shopping_btn}                        xpath://button[normalize-space()='Continue Shopping']
${view_cart_link}                               xpath://u[normalize-space()='View Cart']
${cart_menu}                                    css:a[href='/view_cart']
${cart_table}                                   id:cart_info
${cart_table_row_for_single_product}            id:#product-37
${proceed_to_checkout_btn}                      xpath://a[normalize-space()='Proceed To Checkout']
${checkout_text}                                xpath:(//li[@class='active'])[1]
${comment_section_input_text}                   id:textarea[name='message']
${quantity_of_products_added_to_card}           id:.disabled
${place_order_btn}                              xpath://a[normalize-space()='Place Order']
${logged_in_user}                               id:li:nth-child(10) a:nth-child(1)
${name_on_the_card_input_text_box}              id:input[name='name_on_card']
${card_number_input_text_box}                   id:input[name='card_number']
${cvv_input_text_box}                           id:input[placeholder='ex. 311']
${expiration_month_input_text_box}              css:input[placeholder='MM']
${expiration_year_input_text_box}               css:input[placeholder='YYYY']
${pay_and_confirm_order_btn}                    id:#submit
${order_placed_text}                            xpath://b[normalize-space()='Order Placed!']
${congratulation_on_order_placed_confirmation_message}      xpath://p[normalize-space()='Congratulations! Your order has been confirmed!']
${download_invoice}                             xpath://a[normalize-space()='Download Invoice']
${logout_menu}                                  css:a[href='/logout']
${signup_login_menu}                            css:a[href='/login']


*** Keywords ***
Create WebDriver and open browser
#    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
#    Call Method    ${options}    add_argument    --headless
#    Call Method    ${options}    add_argument    --disable-gpu
#    Call Method    ${options}    add_argument    --window-size=1920,1080
    Create Webdriver    Chrome

Navigate to registration page
    Go To   ${registration_app_url}

Navigate to the automation practise page
    Go To       ${automation_practise_url}

maximize the browser window
    Maximize Browser Window

fill the login form
    [arguments]     ${username}   ${password}

    Input Text      ${user_name_text_box}        ${username}
    Input Password  ${password_text_box}         ${password}

click on login button
    Click Button    ${login_btn}

wait untill the checkout menu is visible
    Wait Until Element Is Visible       ${checkout_menu}

print the message that login is success
    Log         "Login is success"


