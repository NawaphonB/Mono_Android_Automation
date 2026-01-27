*** Settings ***
Resource    ../import.robot

*** Keywords ***
go to sport home
    Wait Until Element Is Visible    ${sport_home}
    Click Element    ${sport_home}
    
Click match live
    Wait Until Element Is Visible    ${match_live}
    Click Element   ${match_live}

Player live
    Wait Until Element Is Visible    ${player_live}

verified popup login
    Wait Until Element Is Visible    ${popup_cta1}
    Click Element    ${popup_cta1}

page select package
    Wait Until Element Is Visible    ${select_package}    timeout=10
    Click Element    ${back}

verified popup buy package
    Wait Until Element Is Visible    ${popup_cta1}
    Click Element    ${popup_cta1}

verified popup upgrade
    Wait Until Element Is Visible    ${popup_cta1}
    Click Element    ${popup_cta1}

page package standard
    Wait Until Element Is Visible    ${package_standard}

click see more
    Wait Until Element Is Visible    ${seemore}    
    Click Element    ${seemore}
    Wait Until Element Is Visible    ${enter_seemore}

verified popup concurrent
    Wait Until Element Is Visible    ${concurrent}        timeout=10
    Click Element    ${popup_cta1}

scroll down sport
    Sleep    5s
    Swipe    0    1500    0    0    500
#     ${json}=    Load JSON From File    ../../Resource/scroll/scrolldown_sport.json
#     Perform Actions    ${json}

scroll down livetv
    Sleep    2s
    Swipe    0    500    0    0    500


