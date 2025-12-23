*** Settings ***
Resource    ../import.robot
Library    OperatingSystem

*** Keywords ***
Select package Category
    Click hamburger menu
    Click Buy package
    Verify Package Category

Buy package 99/month
    Select-Package-Basic
    Click-buy-package-99/month 
    Confirm-Subscribe   
    Check text successfully Subscribe  

Buy package 699/year
    Select-Package-Basic
    Select-Basic-yearly
    Click-buy-package-699/year
    Confirm-Subscribe   
    Check text successfully Subscribe  

Buy package 299/month
    Select-Package-Standard
    Select-Standard-monthly
    Click-buy-package-299/month
    Confirm-Subscribe   
    Check text successfully Subscribe  

Buy package 2999/year
    Select-Package-Standard
    Select-Standard-yearly
    Click-buy-package-2999/year
    Confirm-Subscribe   
    Check text successfully Subscribe  

#Package Category
Click Buy package
    Wait Until Element Is Visible    ${click-button-Buy_package}
    Click Element    ${click-button-Buy_package}

Verify Package Category
    Wait Until Element Is Visible    ${verify_package_category}

#Package Basic
Select-Package-Basic   
    Wait Until Element Is Visible     ${Select-Package-Basic}      
    Click Element    ${Select-Package-Basic}               

Select-Package-Basic-pre-purchase    
    Wait Until Element Is Visible    ${Select-Package-Basic-pre-purchase}  
    Click Element    ${Select-Package-Basic-pre-purchase}    
Click-buy-package-99/month        
    Wait Until Element Is Visible    ${Click-buy-package-99/month}
    Click Element    ${Click-buy-package-99/month}
Select-Basic-yearly    
    Wait Until Element Is Visible    ${Select-Basic-yearly}
    Click Element    ${Select-Basic-yearly}
Click-buy-package-699/year  
    Wait Until Element Is Visible    ${Click-buy-package-699/year} 
    Click Element    ${Click-buy-package-699/year} 

#Package Standard
Select-Package-Standard
    Wait Until Element Is Visible    ${Select-Package-standard} 
    Click Element    ${Select-Package-standard} 

Select-Standard-monthly
    Wait Until Element Is Visible    ${Select-Package-standard 299 / month}
    Click Element    ${Select-Package-standard 299 / month}

Click-buy-package-299/month
    Wait Until Element Is Visible    ${Select-Package-standard 299 / month}
    Click Element    ${Select-Package-standard 299 / month}

Select-Standard-yearly
    Wait Until Element Is Visible    ${Select-Standard-yearly}
    Click Element    ${Select-Standard-yearly}

Click-buy-package-2999/year
    Wait Until Element Is Visible    ${Select-Package-standard 2999 / yearly}
    Click Element    ${Select-Package-standard 2999 / yearly}

# Check-Card-Testing
Confirm-Subscribe    
    Wait Until Element Is Visible    ${Confirm-Subscribe}
    Click Element    ${Confirm-Subscribe}    
Check text successfully Subscribe     
    Wait Until Element Is Visible    ${Check successfully Subscribe}
    Click Element    ${Check successfully Subscribe}