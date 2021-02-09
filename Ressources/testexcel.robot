*** Settings ***
Library        SeleniumLibrary
# Library      openpyxl
Library    Pandas
Resource        ../Ressources/loginPage.robot    
# Library        DataDriver     ../dataFile/TOMIMMO.xlsx    sheet_name=loginTOM
Library    DataDriver    TOMIMMO.xlsx
# Library    ExcelDataDriver    ../dataFile/TOMIMMO.xlsx     capture_screenshot=Skip

Test Setup    Open My browser
Test Teardown    Close browsers
Test Template    Test utilisation excel robot

*** Test Cases ***                  
LoginTestWithExcel    ${Username}    ${Password}   

*** Keywords ***
Test utilisation excel robot
    [Arguments]    ${Username}    ${Password}   
    Input username     ${Username}
    Input Password    ${Password}
    Click button connexion


