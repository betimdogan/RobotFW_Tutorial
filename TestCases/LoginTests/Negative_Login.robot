*** Settings ***
Library  SeleniumLibrary     #importing selenium library
Resource  ../../resources/SuiteSetup.robot
Resource  ../../pages/homePage.robot
Resource  ../../pages/loginPage.robot
Library                DataDriver   file=../../data/test_data.xlsx  sheet_name=login_negative_tests  encoding=UTF-8
Test Template   Invalid Login Template
Test Setup     Start Browser Test
Test Teardown  Finish Browser Test

*** Test Cases ***
My Test
    Invalid Login Template
*** Keywords ***
Invalid Login Template
    [Arguments]      ${username}         ${password}         ${error_message}
    Go To Login Page
    Invalid Login       ${username}         ${password}         ${error_message}