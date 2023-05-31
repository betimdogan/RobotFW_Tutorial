*** Settings ***
Library  SeleniumLibrary     #importing selenium library
Resource  ../../resources/SuiteSetup.robot
Resource  ../../resources/TestSetup.robot
Resource  ../../pages/homePage.robot
Resource  ../../pages/loginPage.robot
Suite Setup     Start Browser Test
Test Teardown    Delete From The Wishlist
Suite Teardown  Finish Browser Test

*** Variables ***
${VALID_USERNAME}  betimdogan@gmail.com
${VALID_PASSWORD}  AkakceSifrem1.

*** Test Cases ***
Verify that the user adds the searched product to the WishList successfully.    #Test case name
    Valid Login     ${VALID_USERNAME}       ${VALID_PASSWORD}
    Search The Product and Go To The Product's Page      Foucault Sarkacı - Umberto Eco
    Add To The Wish List