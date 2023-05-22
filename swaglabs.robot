*** Settings ***
Library     SeleniumLibrary
Resource   resources of project1.robot
Documentation  this file contains the testcase of addtocart functionality


*** Variables ***




*** Test Cases ***
first test case
    start browser and Maximize
    Enter username password click   ${username}     ${password}
    Select the lowest price of product and finish the payment