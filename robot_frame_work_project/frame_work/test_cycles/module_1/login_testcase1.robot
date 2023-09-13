*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/page_objects/login_po.robot
Resource    ../../resources/keywords/common_keywords.robot

*** Test Cases ***
TestCasse For Login
    TRY
        Open Login Page
        Maximize Browser URL                    # comman Keyword Maximize Browser URL
        Sigin Information
        Close Browser URL                       # comman Keyword Maximize Browser URL

        Log To Console    Login Successfully !!!!!!!
    EXCEPT
        Log To Console    Login Fail.......
    END