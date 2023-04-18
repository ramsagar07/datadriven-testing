*** Settings ***
Library  JSONLibrary
Library  SeleniumLibrary
*** Test Cases ***
ead json
    read json
*** Keywords ***
read json
    ${filepath}     set variable    ${EXECDIR}\\test\\JASONFILE.JSON
    ${file}     load json from file     ${filepath}
    ${name}     get value from json     ${file}     $.name
    ${password}     get value from json     ${file}     $.password
    log to console      ${name[0][0]}
    open browser    https://www.facebook.com/   chrome
    FOR     ${i}    IN RANGE    0   2
        wait until element is visible  name:email
        input text      name:email   ${name[0][${i}]}
        input text      name:pass    ${password}
        click element   name:login
    END