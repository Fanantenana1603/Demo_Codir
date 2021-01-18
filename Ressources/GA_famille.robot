*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Ajout Famille [RobotIntegrationFamille]
    Page Should Not Contain    RobotIntegrationFamille
    Sleep    2s 
    Capture Page Screenshot
    Set Selenium Speed    1s 
    Click Element  xpath=(.//*[@class='btn btn-red'])[3]
    Input Text  xpath=(.//*[@type='text'])[2]  RobotIntegrationFamille
    Input Text  xpath=(.//*[@type='text'])[3]  RF
    Input Text  xpath=.//*[@type='number']  1
    Click Element  xpath=(.//*[@class='btn dropdown-toggle btn-filter'])[1]
    Click Element  xpath=(.//*[@x-placement='top-start']//a)[3]
    Click Element  xpath=(.//*[@class='btn dropdown-toggle btn-filter'])[2]
    Click Element  xpath=(.//*[@class='form-group']//a)[41]
    Click Element  xpath=.//*[@class='btn btn-red btn-valider']
    Sleep    3s
    Page Should Contain  RobotIntegrationFamille