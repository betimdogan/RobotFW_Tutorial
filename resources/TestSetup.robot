*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/home_page_locators.py

*** Keywords ***
Delete From The Wishlist
    Wait Until Element is Visible       ${drop_wishlist_button}
    Click Element       ${drop_wishlist_button}
     Wait Until Element is Visible       ${wishlist_button}