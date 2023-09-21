*** Settings ***
Documentation   Automated tests for HR-OS Portal login
Resource        HRLoginPageObjects.robot
Resource        HRLoginVariables.robot
Resource        HRLoginKeywords.robot

#Resource    ../../../Downloads/Robot_Framework-20230911T034759Z-001/Robot_Framework/framework/Resources/Keywords/Hr_update_time_sheet_keywords.robot
Library         SeleniumLibrary

*** Test Cases ***
Open and Interact with HR-OS Home Page
    Open HR-OS Portal
    Login with Valid Credentials
    Sleep    5s
    Switch Back To Main Window
    Sleep   8s
    Profile Functionality
    Drop Down Functionality
    Brush Image Functionality
    Bell Image Functionality
    Mouse Hover Functionality
    Search and Close



    #Time Sheet for a Week on Daily Basis
    #Click On TimeSheet Menu
    #Mouse Over TO Task Header
    #Click On Weekly Basis Button
    #Time Sheet for a week on Weekly basis
    #Update Time Sheet
    #Delete Daily Time





