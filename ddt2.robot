*** Settings ***
Library  SeleniumLibrary
Resource  ../testcase/ddt1case.robot
Library  DataDriver     ../data/userpwd (1).xlsx
Suite Setup  open the browser
Suite Teardown  close the browser
Test Template       invalid login
*** Test Cases ***
Login with excel using ${username} and ${password}
*** Keywords ***
invalid login
    [Arguments]     ${username}    ${password}
    enter username  ${username}
    enter password  ${password}
    click login
    error message