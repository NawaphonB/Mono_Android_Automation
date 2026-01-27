*** Settings ***
Resource    ../../import.robot

*** Test cases ***
LN_001 Success-Login success with E-mail
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_001.username} and password:${LN_001.password}
    # page select package
    verified login success
    # Stop Screen Recording    filename=Login with email-success (Android ver.842).mp4
    Close Application

LN_002 Success-Login success with mobile
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_002.username} and password:${LN_002.password}
    page select package
    verified login success
    # Stop Screen Recording    filename=Login with mobile-success (Android ver.).mp4
    Close Application

LN_005 Login with multiple package success
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_005.username} and password:${LN_005.password}
    page select package
    verified login success
    # Stop Screen Recording    filename=Login with multi-success (Android ver.842).mp4
    Close Application

LN_006 Login fail with E-mail password incorrect
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_006.username} and password:${LN_006.password}
    verified login fail
    # Stop Screen Recording    filename=Login with email-fail (Android ver.842).mp4
    Close Application

LN_007 Fail-Login fail with mobile password incorrect
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_007.username} and password:${LN_007.password}
    verified login fail
    # Stop Screen Recording    filename=Login with mobile-fail (Android ver.842).mp4
    Close Application
    
LN_008 Fail-Login fail E-mail not found
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_008.username} and password:${LN_008.password}
    verified login fail
    # Stop Screen Recording    filename=Login with email not found-fail (Android ver.842).mp4
    Close Application

LN_009 Fail-Login fail mobile not found
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${LN_009.username} and password:${LN_009.password}
    verified login fail
    # Stop Screen Recording    filename=Login with email not found-fail (Android ver.842).mp4
    Close Application