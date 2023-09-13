*** Settings ***
Documentation   Automated tests for HR-OS Portal login
Resource        HRLoginPageObjects.robot
Resource        HRLoginVariables.robot
Resource        HRLoginKeywords.robot
Resource        delete_keyword.robot
#Resource    ../../../Downloads/Robot_Framework-20230911T034759Z-001/Robot_Framework/framework/Resources/Keywords/Hr_update_time_sheet_keywords.robot
Library         SeleniumLibrary

*** Test Cases ***
Open and Interact with HR-OS Home Page34
    Open HR-OS Portal
    Login with Valid Credentials
    Sleep    5s
    Switch Back To Main Window
    Sleep   8s
    #Time Sheet for a Week on Daily Basis
    Click On TimeSheet Menu1
    Mouse Over TO Task Header1
    Click Element if Visible1