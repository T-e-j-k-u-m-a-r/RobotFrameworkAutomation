*** Settings ***

Documentation  : Resource file to store all the global variables, keywords

*** Variables ***

#test data for form filling for creation of new user
${name_value}                           TestingUser
${email_address_value}                  TestingUser@mailinator.com
${password}                             Test@123

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
${app_url}                  http://automationexercise.com
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


*** Keywords ***
