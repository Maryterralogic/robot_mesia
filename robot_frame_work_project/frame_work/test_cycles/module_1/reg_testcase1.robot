*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/page_objects/register_po.robot
Resource    ../../resources/keywords/common_keywords.robot

*** Test Cases ***
TestCasse For Registration


    Open Registration Page
    Maximize Browser URL               # comman Keyword Maximize Browser URL
# Register With Valid Information
    Input Contact Information
    Input Mailing Information
    Input User Information
    Submit Registration
    Close Browser URL           # comman Keyword Close Browser URl
    Log To Console          Registration Successful !!!!!!!