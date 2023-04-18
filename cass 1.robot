*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
row col value
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=     get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    log to console  ${rows}
    ${col}=     get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    log to console  ${col}
    ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console  ${data}
validation
     table row should contain    xpath://*[@id="HTML1"]/div[1]/table    5   Master In Selenium
     table column should contain  xpath://*[@id="HTML1"]/div[1]/table    2   Author
     table cell should contain   xpath://*[@id="HTML1"]/div[1]/table    2   2   Amit
     table header should contain     xpath://*[@id="HTML1"]/div[1]/table     Subject