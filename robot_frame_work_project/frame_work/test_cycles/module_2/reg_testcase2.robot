*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/page_objects/register_po.robot
Resource    ../../resources/keywords/common_keywords.robot

*** Test Cases ***
TestCasse For Second Registration Page


    Open Second Registration Page
    Maximize Browser URL               # comman Keyword Maximize Browser URL
    Second Registration Information
    Unselect Frame
    Wait For Time
    Select Frame        xpath:(//iframe[@title='reCAPTCHA'])[1]
    Select Capcha
    Sleep    30
    Unselect Frame
    Click SignUp Button
    Wait For Time
    Close Browser URL
