*** Settings ***
Resource    ../../import.robot

*** Test cases ***
LiveTV_01 User ที่ไม่ได้ Login จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    [Tags]    done
    Open monomax app
    Start Screen Recording
    Click skip go to home
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup login
    Stop Screen Recording    filename=LiveTV_01 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_02 User ที่ Login แต่ไม่มี Package จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_02.username} and password:${LiveTV_02.password}
    page select package
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    Stop Screen Recording    filename=LiveTV_02 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_03 User ที่ Login ด้วย Package Starter จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_03.username} and password:${LiveTV_03.password}
    page select package
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    Stop Screen Recording    filename=LiveTV_03 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_04 User ที่ Login ด้วย Package Basic จะดูได้ทุกช่องยกเว้นช่อง Tier Standard
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_04.username} and password:${LiveTV_04.password}
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup upgrade
    page package standard
    Stop Screen Recording    filename=LiveTV_04 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_05 User ที่ Login ด้วย Package Standard จะดูช่อง LiveTV ได้ทุกช่อง
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_05.username} and password:${LiveTV_05.password}
    verified login success
    login home page
    go to livetv
    Set Appium Timeout    5s
    click sport
    Set Appium Timeout    5s
    Stop Screen Recording    filename=LiveTV_05 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_06 User ที่ Login ด้วย Package Basic/Standard ที่ยกเลิกและหมดอายุแล้วจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_06.username} and password:${LiveTV_06.password}
    page select package
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    Stop Screen Recording    filename=LiveTV_07 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_07 User ที่ Login ด้วย Package Basic/Standard ที่หมดอายุจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_07.username} and password:${LiveTV_07.password}
    page select package
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    Stop Screen Recording    filename=LiveTV_07 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_08 User ที่ Login ด้วย Package Basic ที่ยกเลิกแล้วยังไม่หมดอายุจะดูได้ทุกช่องยกเว้นช่อง Tier Standard
    [Tags]    WIP
    Click login
    Start Screen Recording
    login by username:${LiveTV_08.username} and password:${LiveTV_08.password}
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    verified popup upgrade
    page package standard
    Stop Screen Recording    filename=LiveTV_04 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_09 User ที่ Login ด้วย Package Standard ที่ยกเลิกแล้วยังไม่หมดอายุจะดูช่อง LiveTV ได้ทุกช่อง
    [Tags]    WIP
    Click login
    Start Screen Recording
    login by username:${LiveTV_09.username} and password:${LiveTV_09.password}
    verified login success
    login home page
    go to livetv
    Get Time    10s
    click sport
    Get Time    10s
    Stop Screen Recording    filename=LiveTV_05 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_15 User ที่ไม่มี Package สามารถซื้อ Package Basic จาก LiveTV ได้สำเร็จ
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_02.username} and password:${LiveTV_02.password}
    page select package
    verified login success
    login home page
    go to livetv
    click sport
    verified popup buy package
    All Package
    Select-Package-Basic
    Click-buy-package-99/month 
    Stop Screen Recording    filename=LiveTV_07 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_16 User ที่ไม่มี Package สามารถซื้อ Package Standard จาก LiveTV ได้สำเร็จ
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${LiveTV_02.username} and password:${LiveTV_02.password}
    page select package
    verified login success
    login home page
    go to livetv
    click sport
    verified popup buy package
    Select-Package-standard  
    Stop Screen Recording    filename=LiveTV_16 (Android ver.8.10.1 (894)) .mp4
    Close Application

LiveTV_17 User ที่มี Package Basic สามารถซื้อ Package Standard จากหน้า LiveTV ได้สำเร็จ
    [Tags]    WIP
   Click login
    Start Screen Recording
    login by username:${LiveTV_02.username} and password:${LiveTV_02.password}
    page select package
    verified login success
    login home page
    go to livetv
    click sport
    verified popup buy package
    Select-Package-standard  
    Stop Screen Recording    filename=LiveTV_07 (Android ver.8.10.1 (894)) .mp4
    Close Application