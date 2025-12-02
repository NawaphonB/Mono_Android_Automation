*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click-hamburger-menu    
    Click Element    ${Click-hamburger-menu}

Click-Start-Watching    
    Click Element    ${Click-Start-Watching}     

# Check-Card-Testing
Confirm-Subscribe    
    Wait Until Element Is Visible    ${Confirm-Subscribe}
    Click Element    ${Confirm-Subscribe}
Check element successfully Subscribe     
...    Wait Until Page Contains Element    ${Check successfully Subscribe}    timeout=20s
Check text successfully Subscribe     
...    Element Text Should Be    ${Check successfully Subscribe}    Purchase successfully 

#Package Catetory
click-button-Buy_package    
    Wait Until Element Is Visible    ${click-button-Buy_package}
    Click Element    ${click-button-Buy_package}
Verify-Package-Catetory-basic    
...    Wait Until Page Contains Element    ${Verify-Package-Catetory-basic}    timeout=20s    
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
...    Click Element    ${Select-Basic-yearly}
Click-buy-package-699/month    
...    Click Element    ${Click-buy-package-699/month} 

#Package Standard
check-element-Package-Catetory-standard    Wait Until Page Contains Element    ${Verify-Package-Catetory-standard}         
Select-Package-standard    Click Element    ${Select-Package-standard}        
Select-Package-standard 299 / month    Click Element    ${Select-Package-standard 299 / month}     
Click-Proceed-to-payment    Click Element    ${Click-Proceed-to-payment}  
Select-Standard-yearly    Click Element    ${Select-Standard-yearly} 
Select-Package-standard 2999 / yearly    Click Element    ${Select-Package-standard 2999 / yearly} 

Visit-Package-Category
    Click-hamburger-menu
    click-button-Buy_package

Verify-Card-testing-before-subscribe
    Confirm-Subscribe
    Check element successfully Subscribe  
    Check text successfully Subscribe 

Buy-Package-Basic99/month
    # Verify-Package-Catetory-basic 
    Select-Package-Basic 
    Click-buy-package-99/month
    Verify-Card-testing-before-subscribe

 Buy-Package-Basic699/month
    Verify-Package-Catetory-basic 
    Select-Package-Basic
    Select-Basic-yearly
    Click-buy-package-699/month   
    Verify-Card-testing-before-subscribe

buy-package-Standard 299/month 
    check-element-Package-Catetory-standard 
    Select-Package-standard
    Select-Package-standard 299 / month 
    Click-Proceed-to-payment
    Verify-Card-testing-before-subscribe
    

buy-package-Standard 2999/yearly
    check-element-Package-Catetory-standard 
    Select-Package-standard
    Select-Standard-yearly
    Select-Package-standard 2999 / yearly 
    Click-Proceed-to-payment
    Verify-Card-testing-before-subscribe