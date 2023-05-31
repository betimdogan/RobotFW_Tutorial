*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${link}  https://www.akakce.com/

*** Keywords ***
Start Browser Test
    Open Browser  ${link}  Chrome
    Set Selenium Implicit Wait  10 seconds
    Set Selenium Timeout  10 seconds
    Maximize Browser Window

Finish Browser Test
    Close All Browsers