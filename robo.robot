*** Settings ***
Library  SeleniumLibrary
Resource  ../testcases/case1.robot
Library  DataDriver  ../testdata/testdata.xlsx
Suite Setup  open the browser
Test Template  login
*** Test Cases ***

login with ${username} ${password}
*** Keywords ***
login
    [Arguments]  ${username}    ${password}
    enter username      ${username}
    enter password      ${password}
    click login
    verify