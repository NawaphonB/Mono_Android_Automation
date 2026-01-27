*** Settings ***
Resource    ../import.robot

*** Keywords ***
go to livetv
    Wait Until Element Is Visible    ${livetv_page}     timeout=10s
    Click Element    ${livetv_page} 

click mono29 free
    Wait Until Element Is Visible    ${mono29free}        timeout=10s
    Click Element    ${mono29free}

click mono29
    Wait Until Element Is Visible    ${mono29}        timeout=10s
    Click Element    ${mono29}    

click sport
    Wait Until Element Is Visible    ${monomax1}        timeout=10s
    Click Element    ${monomax1}
    