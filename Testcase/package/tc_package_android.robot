*** Settings ***
Resource    ../../import.robot

*** Test cases ***
 PK_004 สมัคร Basic 99 รายเดือนแบบ Recurring ด้วย In app purchase สำเร็จ
    [Tags]    done
    Click login
    Start Screen Recording
    login by username:${PK_004.username} and password:${PK_004.password}
    page select package
    verified login success
    login home page
    Select package Category
    Buy package 99/month
    Stop Screen Recording    filename=PK_004.mp4
    Close Application

PK_005 สมัคร Basic 699 รายปีแบบ Recurring ด้วย In app purchase สำเร็จ
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_005.username} and password:${PK_005.password}
    page select package
    verified login success
    login home page
    Select package Category
    Buy package 699/year
    # Stop Screen Recording    filename=PK_005.mp4
    Close Application

PK_030 สมัคร Standard 299 รายเดือนแบบ Recurring ด้วย In app purchase สำเร็จ
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_030.username} and password:${PK_030.password}
    page select package
    verified login success
    login home page
    Select package Category
    Buy package 299/month
    # Stop Screen Recording    filename=PK_030.mp4
    Close Application

PK_031 สมัคร Standard 2999 รายปีแบบ Recurring ด้วย In app purchase สำเร็จ
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_031.username} and password:${PK_031.password}
    page select package
    verified login success
    login home page
    Select package Category
    Buy package 2999/year
    # Stop Screen Recording    filename=PK_031.mp4
    Close Application

PK_043 Upgrade จาก Basic ไป Standard ด้วย In app purchase สำเร็จ รายเดือน -> รายเดือน
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_043.username} and password:${PK_043.password}
    verified login success
    login home page
    Select package Category
    Buy package 299/month
    # Stop Screen Recording    filename=PK_043.mp4
    Close Application

PK_044 Upgrade จาก Basic ไป Standard ด้วย In app purchase สำเร็จ รายเดือน -> รายปี
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_044.username} and password:${PK_044.password}
    verified login success
    login home page
    Select package Category
    Buy package 2999/year
    # Stop Screen Recording    filename=PK_044.mp4
    Close Application

PK_045 Upgrade จาก Basic ไป Standard ด้วย In app purchase สำเร็จ รายปี -> รายปี
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_045.username} and password:${PK_045.password}
    verified login success
    login home page
    Select package Category
    Buy package 2999/year
    # Stop Screen Recording    filename=PK_045.mp4
    Close Application

PK_046 Upgrade จาก Basic ไป Standard ด้วย In app purchase สำเร็จ รายปี -> รายเดือน
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_046.username} and password:${PK_046.password}
    verified login success
    login home page
    Select package Category
    Buy package 299/month
    # Stop Screen Recording    filename=PK_046.mp4
    Close Application

PK_053 Renew package เดิมที่เคยซื้อไปได้สำเร็จ
    [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_053.username} and password:${PK_053.password}
    page select package
    verified login success
    login home page
    Renew package
    # Buy package 2999/year
    Buy package 99/month
    # Buy package 299/month
    # Stop Screen Recording    filename=PK_050.mp4
    Close Application

PK_054 Renew package ใหม่ได้สำเร็จ
   [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_054.username} and password:${PK_054.password}
    page select package
    verified login success
    login home page
    Renew package
    # Buy package 99/month
    Buy package 299/month
    # Stop Screen Recording    filename=PK_050.mp4
    Close Application

PK_055 Renew package หลังจาก กด Cancel package 
   [Tags]    done
    Click login
    # Start Screen Recording
    login by username:${PK_055.username} and password:${PK_055.password}
    page select package
    verified login success
    login home page
    Renew package
    Buy package 99/month
    # Buy package 299/month
    # Stop Screen Recording    filename=PK_050.mp4
    Close Application


