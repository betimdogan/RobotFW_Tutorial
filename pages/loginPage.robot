*** Settings ***
Library  SeleniumLibrary
Library                String
Library                Collections
Variables  ../locators/login_page_locators.py

*** Variables ***

*** Keywords ***
Valid Login
    [Arguments]      ${username}         ${password}
    Go To Login Page
    Input Username   ${username}
    Input Password   ${password}
    Click Login Button
    Check The Successful Login

Invalid Login
    [Arguments]      ${username}         ${password}         ${error_message}
    Input Username and Password     ${username}         ${password}
    Click Login Button
    Check The Error Message     ${error_message}

Input Username and Password
    [Arguments]      ${username}         ${password}
    Input Username      ${username}
    Input Password      ${password}

Input Username
    [Arguments]     ${username}
    Wait Until Element is Visible       ${username_input}
    Input Text      ${username_input}   ${username}

Input Password
    [Arguments]     ${password}
    Wait Until Element is Visible       ${password_input}
    Input Text      ${password_input}   ${password}

Click Login Button
    Wait Until Element is Enabled  ${login_button2}
    Click Element  ${login_button2}

Check The Successful Login
    Mouse Over    ${user_icon}
    Wait Until Element Is Visible    ${logout_button}

Check The Error Message
    [Arguments]     ${error_message}
    Wait Until Element is Visible       ${error_message}