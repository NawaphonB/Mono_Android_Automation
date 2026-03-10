*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open monomax app    
    Open Application   
    # ...    http://127.0.0.1:4723
    ...    http://127.0.0.1:4723/wd/hub
    ...    platformName=Android    
    ...    appium:platformVersion=11.0    
    ...    appium:deviceName=Test Device    
    ...    appium:app=${EXECDIR}/monomax.apk
    # ...    appium:appPackage=com.doonung.activity.staging    
    ...    appium:appPackage=com.doonung.activity
    ...    appium:appActivity=com.doonung.activity.mobile.ui.activity.splash.MBSplashActivity
    ...    appium:automationName=UiAutomator2
    ...    appium:uiautomator2ServerLaunchTimeout=120000
    ...    appium:uiautomator2ServerInstallTimeout=120000
    ...    appium:uiautomator2ServerReadTimeout=120000
    ...    appium:newCommandTimeout=300

Go to login menu
    Wait Until Element Is Visible      ${login_button}    timeout=10s
    Click Element    ${login_button}

Input mono username
    [Arguments]     ${username}
    Wait Until Element Is Visible      ${login_input_username}    timeout=10s
    Input Text      ${login_input_username}     ${username}

Input mono password
    [Arguments]     ${password}
    Wait Until Element Is Visible   ${login_input_password}    timeout=10s
    Input Text  ${login_input_password}     ${password}    

Click login button
    Wait Until Element Is Visible   ${login_button_inside}    timeout=10s
    Click Element    ${login_button_inside}

verified login success
    Wait Until Element Is Visible   ${choose_profile_manage}    timeout=10s
    Click Element    ${choose_profile_manage}
    Click Element    ${back}

verified login fail   
    Wait Until Element Is Visible    ${login_incorrect}    timeout=10s

Click skip go to home
    Wait Until Element Is Visible    ${skip_login}    timeout=10s
    Click Element    ${skip_login}   

click popup noti
    Wait Until Element Is Visible    ${popup_noti}    timeout=10s
    Click Element    ${popup_noti}

click allow noti
    Wait Until Element Is Visible    ${allow_button}    timeout=10s
    Click Element    ${allow_button}

Click hamburger menu    
    Click Element    ${Click-hamburger-menu}    
