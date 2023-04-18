*** Settings ***
Library  SeleniumLibrary
Resource  ../testcase/ddt1case.robot
Suite Setup  open the browser
Suite Teardown  close the browser
Test Template   invalid login
*** Test Cases ***          username                 password
crct username empty pwd     admin@yourstore.com     ${EMPTY}
wrg username crct pwd       adin@yourstore.com      admin
wrrng username wrng pwd     din@yourstore.com       dmin
emptyusername emptypwd      ${EMPTY}              ${EMPTY}
*** Keywords ***
invalid login
    [Arguments]  ${username}    ${password}
    enter username  ${username}
    enter password  ${password}
    click login
    error message
