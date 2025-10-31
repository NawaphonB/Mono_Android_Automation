*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click login
    Open monomax app
    Go to login menu

login by username:${username} and password:${password}
    Input mono username   ${username}
    Input mono password   ${password}
    Click login button

login home page
    click popup noti
    click allow noti