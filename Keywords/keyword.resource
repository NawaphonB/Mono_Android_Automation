*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open monomax app    
    Open Application    
    ...    http://127.0.0.1:4723
    ...    platformName=Android    
    ...    platformVersion=16.0    
    ...    deviceName=Test Device    
    ...    appPackage=com.doonung.activity.staging    
    ...    appActivity=com.doonung.activity.mobile.ui.activity.MBSplashActivity
    ...    automationName=UiAutomator2

Go to login menu
    Wait Until Element Is Visible      ${login_button}
    Click Element    ${login_button}

Input mono username
    [Arguments]     ${username}
    Wait Until Element Is Visible      ${login_input_username}
    Input Text      ${login_input_username}     ${username}

Input mono password
    [Arguments]     ${password}
    Wait Until Element Is Visible   ${login_input_password}
    Input Text  ${login_input_password}     ${password}

Click login button
    Wait Until Element Is Visible   ${login_button_inside}
    Click Element    ${login_button_inside}

verified login success
    Wait Until Element Is Visible   ${choose_profile_manage}    timeout=10s
    Click Element    ${select_profile}

verified login fail   
    Wait Until Element Is Visible    ${login_incorrect}

click popup noti
    Wait Until Element Is Visible    ${popup_noti}
    Click Element    ${popup_noti}

click allow noti
    Wait Until Element Is Visible    ${allow_button}
    Click Element    ${allow_button}
