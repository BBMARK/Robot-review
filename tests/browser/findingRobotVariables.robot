*** Settings ***
Library    SeleniumLibrary
#Suite Setup = ก่อนที่จะเริ่ม Run Test ทั้งหมด จะต้องเริ่มการทำงานตัวนี้ก่อน
Suite Setup     Open Browser    http://www.google.com    Chrome 
#Test Setup = ก่อนที่จะเริ่มเข้า Test Case ให้เริ่มการกระทำนี้ก่อน
Test Setup      Input Text    id=APjFqb    robot
#Test Teardown = หลังจากจบ Test Case แต่ละ Case ให้ทำการกระทำนี้
Test Teardown   Go To  http://www.google.com
#Suite Teardown = หลังจาก Run Test เสร็จทั้งหมดแล้วจะสั่งให้ทำอะไรตอนสุดท้าย
Suite Teardown  Close Browser

*** Variables ***
${WIKIPEDIA}    https://th.wikipedia.org/wiki/%E0%B8%AB%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C
${LONGDO}    https://dict.longdo.com/search/ROBOT

*** Test Cases ***
Searching "robot" on Google, the search result should contain Wikipedia
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${WIKIPEDIA}

Searching "robot" on Google, the search result should contain Longdo Directory
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${LONGDO}