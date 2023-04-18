*** Settings ***
Library  SeleniumLibrary
Variables  ../page objects/objects1.py
Library  DataDriver  ../testdata/testdata.xlsx
*** Variables ***
${url}     https://www.facebook.com/login/device-based/regular/login/?login_attempt=1&lwv=120&lwc=1348028
${browser}      chrome
*** Keywords ***
open the browser
    open browser   ${url}    ${browser}
enter username
    [Arguments]     ${username}
    input text      ${email_box}   ${username}
enter password
    [Arguments]     ${password}
    input text      ${password_box}    ${password}
click login
    click element   ${login_button}
verify
    sleep   1
    title should be     ${unsuccessful_login}