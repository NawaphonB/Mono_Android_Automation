*** Settings ***
Resource    ../../import.robot

*** Test cases ***
LN_001 Success-Login success with E-mail
    [Tags]    success
    Click login
    Start Screen Recording
    login by username:${LN_001.username} and password:${LN_001.password}
    page select package
    verified login success
    Stop Screen Recording    filename=Login with email-success (Android ver.842).mp4
    Close Application

LN_002 Success-Login success with mobile
    [Tags]    success
    Click login
    Start Screen Recording
    login by username:${LN_002.username} and password:${LN_002.password}
    verified login success
    Stop Screen Recording    filename=Login with mobile-success (Android ver.).mp4
    Close Application

LN_0022 Success-Login success with username [Free tier]
    [Tags]    success
    Click login
    Start Screen Recording
    login by username:${LN_0022.username} and password:${LN_0022.password}
    enter package page
    verified login success
    Stop Screen Recording    filename=Login with username-success [Expire] (Android ver.).mp4
    Close Application

# LN_003 Success-Log in OTP success with E-mail

# LN_004 Success-Login OTP success with Mobile

LN_005 Login with multiple package success
    [Tags]    success
    Click login
    Start Screen Recording
    login by username:${LN_005.username} and password:${LN_005.password}
    enter package page
    verified login success
    Stop Screen Recording    filename=Login with multi-success (Android ver.842).mp4
    verified login success

LN_006 Login fail with E-mail password incorrect
    [Tags]    fail
    Click login
    Start Screen Recording
    login by username:${LN_006.username} and password:${LN_006.password}
    verified login fail
    Stop Screen Recording    filename=Login with email-fail (Android ver.842).mp4
    Close Application

LN_007 Fail-Login fail with mobile password incorrect
    [Tags]    fail
    Click login
    Start Screen Recording
    login by username:${LN_007.username} and password:${LN_007.password}
    verified login fail
    Stop Screen Recording    filename=Login with mobile-fail (Android ver.842).mp4
    Close Application
    
LN_008 Fail-Login fail E-mail not found
    Click login
    Start Screen Recording
    login by username:${LN_008.username} and password:${LN_008.password}
    verified login fail
    Stop Screen Recording    filename=Login with email not found-fail (Android ver.842).mp4
    Close Application

LN_009 Fail-Login fail mobile not found
    [Tags]    fail
    Click login
    Start Screen Recording
    login by username:${LN_009.username} and password:${LN_009.password}
    verified login fail
    Stop Screen Recording    filename=Login with email not found-fail (Android ver.842).mp4
    Close Application

# LN_010 Fail-Login OTP fail E-mail not found

# LN_011 Fail-Login OTP fail mobile not found

# LN_012 Fail-Login fail OTP Expired

# LN_013 Fail-Login fail OTP incorrect

# LN_014 Fail-Login fail using old OTP after click resend

