*** Settings ***
Resource    ../import.robot

*** Keywords ***
go to livetv
    Wait Until Element Is Visible    ${livetv_page} 
    Click Element    ${livetv_page} 

click mono29
    Wait Until Element Is Visible    ${mono29}        timeout=10s
    Click Element    ${mono29}    

click sport
    Wait Until Element Is Visible    ${monomax1}        timeout=10s
    Click Element    ${monomax1}
    