*** Settings ***
Resource  D:/projects/robot_framework/resources/PO/LandingPage.robot
Resource  D:/projects/robot_framework/resources/PO/TopNav.robot
Resource  D:/projects/robot_framework/resources/PO/SearchResults.robot
Resource  D:/projects/robot_framework/resources/PO/Product.robot
Resource  D:/projects/robot_framework/resources/PO/Cart.robot
Resource  D:/projects/robot_framework/resources/PO/SignIn.robot

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

user searches for products
    LandingPage.Load
    TopNav.Search for Products

search results contains relevant products
    SearchResults.Verify Search Completed

user selects a product from search results
    SearchResults.Click Product link
    Product.Verify Page Loaded

user selects a searched product

    user searches for products
    search results contains relevant products
    user selects a product from search results

correct product page loads
    Product.Verify Page Loaded

user adds that product to their cart
    Product.Add to Cart

user adds a product to their cart

    user searches for products
    search results contains relevant products
    user selects a product from search results
    correct product page loads
    user adds that product to their cart
    the product is present in cart

the product is present in cart
    Cart.Verify Product Added

user attempts to checkout
    Cart.Proceed to Checkout

the user is required to sign in
    SignIn.Verify Page Loaded
