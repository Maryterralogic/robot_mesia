*** Settings ***
Library    SeleniumLibrary
Resource    robot_frame_work_project/frame_work/resources/variables/login_variables.robot
Resource    robot_frame_work_project/frame_work/resources/variables/common_variables.robot
*** Variables ***
# Login Page Elements

${txt_LoginUserName}        name:userName            #name:userName
${txt_LoginUserPassword}      name:password
${txt_btn_submit}       xpath://input[@name='submit']

######################
${txt_1_loginEmail}     id:email
${txt_1_loginPassword}     id:login-password
${txt_1_loginButton}     id:login
###################


*** Keywords ***

Open Login Page
    Open Browser        ${login_URL_1}    ${BROWSER}
#    Maximize Browser Window
#    Sleep    2

#Login with Valid Information
Sigin Information
    Input Text      ${txt_LoginUserName}      ${login_ValidUsername}
    Input Text      ${txt_LoginUserPassword}      ${login_ValidPassword}
    Click Button    ${txt_btn_submit}


Open Second Login Page
    Open Browser    ${login_URL_2}      ${BROWSER}

#Login Second URL with Valid Information

Login For Second URL Information
    Input Text      ${txt_1_loginEmail}         ${login_ValidUsername}
    Input Text      ${txt_1_loginPassword}      ${login_ValidPassword}
    Click Button    ${txt_1_loginButton}






