*** Settings ***
Resource    ../../import.robot

*** Test cases ***
LiveTV_01 User ที่ไม่ได้ Login จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    Open monomax app
    # Start Screen Recording
    Click skip go to home
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    verified popup login
    # Stop Screen Recording    filename=LiveTV_01_No Login (Android ver.842) .mp4
    Close Application

LiveTV_02 User ที่ Login แต่ไม่มี Package จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    Click login
    # Start Screen Recording
    login by username:${LiveTV_02.username} and password:${LiveTV_02.password}
    page select package
    verified login success
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    # Stop Screen Recording    filename=LiveTV_02_No Package (Android ver.842) .mp4
    Close Application

LiveTV_03 User ที่ Login ด้วย Package Starter จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    Click login
    # Start Screen Recording
    login by username:${LiveTV_03.username} and password:${LiveTV_03.password}
    page select package
    verified login success
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    # Stop Screen Recording    filename=LiveTV_03._Starter (Android ver.842) .mp4
    Close Application

LiveTV_04 User ที่ Login ด้วย Package Basic จะดูได้ทุกช่องยกเว้นช่อง Tier Standard
    Click login
    # Start Screen Recording
    login by username:${LiveTV_04.username} and password:${LiveTV_04.password}
    verified login success
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    verified popup upgrade
    page package standard
    # Stop Screen Recording    filename=LiveTV_04_Basic (Android ver.842) .mp4
    Close Application

LiveTV_05 User ที่ Login ด้วย Package Standard จะดูช่อง LiveTV ได้ทุกช่อง
    Click login
    # Start Screen Recording
    login by username:${LiveTV_05.username} and password:${LiveTV_05.password}
    verified login success
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    Get Time    10s
    # Stop Screen Recording    filename=LiveTV_05_Standard (Android ver.842) .mp4
    Close Application

# LiveTV_06 User ที่ Login ด้วย Package Basic/Standard ที่ยกเลิกและหมดอายุแล้วจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'


LiveTV_07 User ที่ Login ด้วย Package Basic/Standard ที่หมดอายุจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    Click login
    # Start Screen Recording
    login by username:${LiveTV_07.username} and password:${LiveTV_07.password}
    page select package
    verified login success
    login home page
    go to livetv
    click mono29
    Get Time    10s
    click sport
    verified popup buy package
    page package standard
    # Stop Screen Recording    filename=LiveTV_07_Expire (Android ver.842) .mp4
    Close Application

# LiveTV_08 User ที่ Login ด้วย Package Basic ที่ยกเลิกแล้วยังไม่หมดอายุจะดูได้ทุกช่องยกเว้นช่อง Tier Standard


# LiveTV_09 User ที่ Login ด้วย Package Standard ที่ยกเลิกแล้วยังไม่หมดอายุจะดูช่อง LiveTV ได้ทุกช่อง