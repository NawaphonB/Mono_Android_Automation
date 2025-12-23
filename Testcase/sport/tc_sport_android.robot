*** Settings ***
Resource    ../../import.robot

*** Test cases ***
SP_001 ตรวจสอบว่าไม่สามารถดูถ่ายทอดสดฟุตบอล, ไฮไลท์ และการแข่งขันฟุตบอลย้อนหลังได้ หากไม่เข้าสู่ระบบ
    [Tags]    done
    Open monomax app
    # Start Screen Recording
    Click skip go to home
    login home page
    go to sport home
    Click match live
    verified popup login
    # Stop Screen Recording    filename=SP_001_No Login (Android ver.842) .mp4
    Close Application

SP_002 ตรวจสอบว่าไม่สามารถดูถ่ายทอดสดฟุตบอล, ไฮไลท์และการแข่งขันฟุตบอลย้อนหลังได้ หากไม่มีแพ็กเกจ
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${SP_002.username} and password:${SP_002.password}
    page select package
    verified login success
    login home page
    go to sport home
    Click match live
    verified popup buy package
    page package standard
    # Stop Screen Recording    filename=SP_002_No Package (Android ver.842) .mp4
    Close Application

SP_003 ตรวจสอบว่าไม่สามารถดูถ่ายทอดสดฟุตบอล, ไฮไลท์และการแข่งขันฟุตบอลย้อนหลังได้ หากมีแพ็กเกจ starter แต่ยังไม่มีแพ็กเกจ standard
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${SP_003.username} and password:${SP_003.password}
    page select package
    verified login success
    login home page
    go to sport home
    Click match live
    verified popup buy package
    page package standard
    Stop Screen Recording    filename=SP_003_Starter (Android ver.842) .mp4
    Close Application

SP_004 ตรวจสอบว่าไม่สามารถดูถ่ายทอดสดฟุตบอล, ไฮไลท์และการแข่งขันฟุตบอลย้อนหลังได้ หากมีแพ็กเกจ basic แต่ยังไม่มีแพ็กเกจ standard (EPL)
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${SP_004.username} and password:${SP_004.password}
    verified login success
    login home page
    go to sport home
    Click match live
    verified popup upgrade
    page package standard
    Stop Screen Recording    filename=SP_004_Basic (Android ver.842) .mp4
    Close Application

SP_005 ตรวจสอบว่าสามารถดูถ่ายทอดสดฟุตบอล, ไฮไลท์และการแข่งขันฟุตบอลย้อนหลังได้ หากมีแพ็กเกจ standard (EPL)
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${SP_005.username} and password:${SP_005.password}
    verified login success
    login home page
    go to sport home
    Click match live
    Player live
    Sleep    10s
    Stop Screen Recording    filename=SP_005_Standard (Android ver.842) .mp4
    Close Application

SP_018 ตรวจสอบว่าหากวิดีโอไฮไลท์หรือการแข่งขันฟุตบอลย้อนหลัง มีวิดีโอมากกว่า 10 วิดีโอขึ้นไป จะแสดงปุ่มให้กดดูเพิ่มเติม
    [Tags]    inprogress
    Open monomax app
    Start Screen Recording
    Click skip go to home
    login home page
    go to sport home
    click see more ---มันต้องเลื่อนลง
    # Stop Screen Recording    filename=SP_001_No Login (Android ver.842) .mp4
    Close Application

SP_027 ตรวจสอบว่าเมื่อมีการอัดหน้าจอขณะเล่นถ่ายทอดสดหรือวิดีโอ จะขึ้นเป็นภาพสีดำ
    [Tags]    inprogress
    Click login
    Start Screen Recording
    login by username:${SP_030.username} and password:${SP_030.password}
    verified login success
    login home page
    go to sport home
    Click match live
    Sleep    20s
    Stop Screen Recording    filename=SP_027 (Android) .mp4
    Close Application

SP_029 ตรวจสอบว่าเมื่อมีการถูก Capture จะไม่สามารถจับภาพถ่ายทอดสดหรือวิดีโอได้
    [Tags]    inprogress

SP_030 ตรวจสอบการจำกัดจำนวนอุปกรณ์รับชม
    [Tags]    inprogress
    Click login
    login by username:${SP_030.username} and password:${SP_030.password}
    verified login success
    login home page
    go to sport home
    Click match live
    verified popup concurrent
    Close Application

SP_036 ตรวจสอบว่าไม่สามารถดูถ่ายทอดสดฟุตบอล, Match upcoming และการแข่งขันฟุตบอลย้อนหลังได้ หากแพ็กเกจ standard (EPL) หมดอายุ
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${SP_036.username} and password:${SP_036.password}
    page select package
    verified login success
    login home page
    go to sport home
    Click match live
    verified popup upgrade
    page package standard
    Stop Screen Recording    filename=SP_036_Expire (Android ver.842) .mp4
    Close Application