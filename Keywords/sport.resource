*** Settings ***
Resource    ../import.robot

*** Keywords ***
go to sport home
    Wait Until Element Is Visible    ${sport_home}
    Click Element    ${sport_home}
    
Click match live
    Click Element   ${match_live}

Player live
    Wait Until Element Is Visible    ${player_live}

verified popup login
    Wait Until Element Is Visible    ${popup_login}
    Click Element    ${popup_login}

page select package
    Wait Until Element Is Visible    ${select_package}    timeout=10
    Click Element    ${click_back}

verified popup buy package
    Wait Until Element Is Visible    ${popup_buyPackage}
    Click Element    ${popup_buyPackage}

verified popup upgrade
    Wait Until Element Is Visible    ${popup_upgrade}
    Click Element    ${popup_upgrade}

page package standard
    Wait Until Element Is Visible    ${package_standard}