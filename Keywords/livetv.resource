*** Settings ***
Resource    ../import.robot

*** Keywords ***
go to livetv
    Wait Until Element Is Visible    ${livetv_page}     timeout=10s
    Click Element    ${livetv_page} 

click sport
    Wait Until Element Is Visible    ${monomax1}        timeout=10s
    Click Element    ${monomax1}
    