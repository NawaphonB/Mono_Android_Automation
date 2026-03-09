*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open monomax app    
    Open Application    
    ...    http://127.0.0.1:4723/wd/hub
    ...    platformName=Android    
    ...    appium:platformVersion=11.0    
    ...    appium:deviceName=Test Device    
    ...    appium:app=${EXECDIR}/monomax.apk
    # ...    appium:appPackage=com.doonung.activity.staging    
    ...    appium:appPackage=com.doonung.activity
    ...    appium:appActivity=com.doonung.activity.mobile.ui.activity.splash.MBSplashActivity
    ...    appium:automationName=UiAutomator2
    ...    appium:uiautomator2ServerLaunchTimeout=60000
    ...    appium:uiautomator2ServerInstallTimeout=60000

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
    Wait Until Element Is Visible   ${login_button_inside}    timeout=10s
    Click Element    ${login_button_inside}

verified login success
    Wait Until Element Is Visible   ${choose_profile_manage}    timeout=10s
    Click Element    ${choose_profile_manage}
    Click Element    ${back}

verified login fail   
    Wait Until Element Is Visible    ${login_incorrect}

Click skip go to home
    Wait Until Element Is Visible    ${skip_login} 
    Click Element    ${skip_login}   

click popup noti
    Wait Until Element Is Visible    ${popup_noti}
    Click Element    ${popup_noti}

click allow noti
    Wait Until Element Is Visible    ${allow_button}
    Click Element    ${allow_button}

Click hamburger menu    
    Click Element    ${Click-hamburger-menu}
