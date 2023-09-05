*** Settings ***
Library    SeleniumLibrary
Resource    robot_frame_work_project/frame_work/resources/page_objects/login_po.robot
Resource    robot_frame_work_project/frame_work/resources/keywords/common_keywords.robot

*** Test Cases ***
TestCasse For Second Login
    TRY
        Open Second Login Page
        Maximize Browser URL
        Login For Second URL Information
        Wait For Time
        Close Browser URL
        Log To Console    Login Successful !!!!!!
    EXCEPT
        Log To Console    Login Fail .....
    END
