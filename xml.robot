*** Settings ***
Library  SeleniumLibrary
Library  XML
Library  OS
Library  Collections
*** Variables ***
${i}    1
*** Test Cases ***
Test case:
    open browser    https://www.facebook.com/login/?privacy_mutation_token=eyJ0eXBlIjowLCJjcmVhdGlvbl90aW1lIjoxNjgxMTkyMDY1LCJjYWxsc2l0ZV9pZCI6MzgxMjI5MDc5NTc1OTQ2fQ%3D%3D   chrome
    ${data} =   parse xml   data/testdata.xml.xml
    WHILE       ${i} <=5
        ${username}=    get element text    ${data}    .//employee[${i}]//username
        ${password}=    get element text    ${data}     .//employee[${i}]/password
        wait until element is visible  id:email
        clear element text      id:email
        input text  id:email    ${username}
        input text  id:pass     ${password}
        click element   name:login
        sleep   2
        title should be     Log in to Facebook
        ${i}=   Evaluate     ${i}+1
    END