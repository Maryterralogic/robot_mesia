*** Settings ***
Library    SeleniumLibrary
Resource    robot_frame_work_project/frame_work/resources/variables/common_variables.robot

*** Keywords ***

Maximize Browser URL
    Maximize Browser Window
    Sleep    2

Close Browser URL
    Close Browser

Wait For Time
    Sleep    2

