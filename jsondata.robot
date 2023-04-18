*** Settings ***
Library  SeleniumLibrary
Resource  ../test/JSON.ROBOT
Library  DataDriver  ../test/JASONFILE.JSON
Library  JSONLibrary
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