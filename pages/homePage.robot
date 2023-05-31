*** Settings ***
Library  SeleniumLibrary
Library     Browser
Variables  ../locators/home_page_locators.py
Variables  ../locators/login_page_locators.py

*** Variables ***

*** Keywords ***
Go To Login Page
    Wait Until Element is Visible       ${login_button}
    Click Element       ${login_button}
    Wait Until Element is Visible       ${username_input}

Search The Product
    [Arguments]      ${product_name}
    Input Product Name To Search Bar      ${product_name}
    Search
    Check The Successful Search
    Wait Until Element is Visible       //h3[contains(text(),'${product_name}')]

Search The Product and Go To The Product's Page
    [Arguments]      ${product_name}
    Search The Product          ${product_name}
    Click Element    //h3[contains(text(),'${product_name}')]
    Wait Until Element is Visible       //h1[contains(text(),'${product_name}')]

Input Product Name To Search Bar
    [Arguments]     ${product_name}
    Wait Until Element is Visible       ${search_bar}
    Input Text      ${search_bar}   ${product_name}

Search
    Click Element       ${search_button}
    Check The Successful Search

Check The Successful Search
    Wait Until Element is Visible       ${products_price_filter_text}

Go To The First Product's Page
    Click Element       ${first_product}
    Wait Until Element is Visible       ${product_page}

Add To The Wish List
    Scroll Element Into View       ${wishlist_button}
    Click Element       ${wishlist_button}
    Wait Until Element is Visible       ${drop_wishlist_button}

Go To Wishlist
    Wait Until Element is Visible       ${wishlist_navbar}
    Click Element       ${wishlist_navbar}

Open Item Menu
    Wait Until Element is Visible       ${item_menu}
    Click Element       ${item_menu}

Empty Wishlist
    Go To Wishlist
    Open Item Menu
    Wait Until Element is Visible       ${delete_wish}
    Click Element       ${delete_wish}
    Wait Until Element is Visible       ${confirm_delete_wish}
    Click Element       ${confirm_delete_wish}
    Wait Until Element is Visible       ${empty_wishlist}
