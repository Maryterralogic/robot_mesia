*** Settings ***
Library    SeleniumLibrary
Resource    robot_frame_work_project/frame_work/resources/page_objects/login_po.robot
Resource    robot_frame_work_project/frame_work/resources/keywords/common_keywords.robot

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