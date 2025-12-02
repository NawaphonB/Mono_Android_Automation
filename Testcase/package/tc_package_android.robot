*** Settings ***
Resource    ../../import.robot

*** Test cases ***
 PK_004 สมัคร Basic 99 รายเดือนแบบ Recurring ด้วย In app purchase สำเร็จ
    [Tags]    inprogress
    Click login
    # Start Screen Recording
    login by username:${PK_004.username} and password:${PK_004.password}
    page select package
    verified login success
    login home page
    Visit-Package-Category
    Buy-Package-Basic99/month
    Close Application

 tc-003 buy-package-Basic 699/yearly  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic699/month

tc-004 Upgrade-Package-Basic 99/month-to-Basic699/yearly
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic99/month
    Click-Start-Watching  
    Visit-Package-Category
    Buy-Package-Basic699/month

tc-005 Downgrade from Basic 699/yearly to Basic99/month
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic699/month
    Click-Start-Watching
    Visit-Package-Category
    Buy-Package-Basic99/month

tc-006 buy-package-Standard 299/month  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 299/month

tc-007 buy-package-Standard 2999/yearly  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 2999/yearly  

tc-008 Upgrade-Package-Standard 299/month-to-Standard2999/yearly
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 299/month
    Click-Start-Watching
    Visit-Package-Category
    buy-package-Standard 2999/yearly

tc-009 Downgrade from Standard 2999/yearly to Standard299/month
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 2999/yearly
    Click-Start-Watching
    Visit-Package-Category
    buy-package-Standard 299/month
    Log To Console    Downgrade Successfully