*** Settings  *** 
Library    SeleniumLibrary
Library    XML
*** Variables ***
${browser}   edge   
${url}      https://www.saucedemo.com/ 
   


*** Test Cases ***

saucedemo test     Open Browser  ${url}  ${browser}
               Maximize Browser Window
               Input Text   xpath=//input[@id='user-name']  standard_user
               Input Text    //input[@id='password']    secret_sauce
               Click Button    //input[@id='login-button']
               Select From List By Index    //select[@class='product_sort_container']    2  
               Click Button    //button[@id='add-to-cart-sauce-labs-onesie'] 
               Click Link    //a[@class='shopping_cart_link'] 
               Click Button    //button[@id='checkout']  
               Sleep    3 
               Input Text    //input[@id='first-name']   "jhansi"
               Input Text    //input[@id='last-name']    "latha"
               Input Text    //input[@id='postal-code']  "01234"
               Click Button    //input[@id='continue']
               Sleep    5s
               Click Element    //button[@id='finish']
               Sleep    3s
               close Browser
*** Keywords ***
