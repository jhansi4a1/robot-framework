*** Settings ***
Library    SeleniumLibrary
Variables  locators of swaglabs.py
*** Variables ***
${browser}    edge
${url}    https://www.saucedemo.com/ 
${username}  standard_user
${password}  secret_sauce


*** Keywords ***
start browser and Maximize
      Open Browser  ${url}    ${browser}
      Maximize Browser Window
      ${title}=  Get Title
      Log    ${title}
Enter username password click
    [Arguments]  ${username}  ${password}
     Input Text    ${username_login}   standard_user
      Input Text   ${password_login}   secret_sauce
      Click Button  ${Button_login}
Select the lowest price of product and finish the payment
        Select From List By Index    ${container}    2  
               Click Button   ${Button1}
               Click Link    ${Link} 
               Click Button    ${Button2}
               Sleep    3 
               Input Text    ${firstname}   "jhansi"
               Input Text    ${lastname}   "latha"
               Input Text    ${postalcode}  "01234"
               Click Button  ${button3}
               Sleep    5s
               Click Element   ${element}
               Sleep    3s
               close Browser