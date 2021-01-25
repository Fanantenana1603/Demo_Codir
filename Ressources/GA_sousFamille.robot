*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Ajout d'une nouvelle Sous-Famille [Robot__test__SousFamille]
    Sleep     5s 
    set Selenium Speed    0.5s
    Click Element  xpath=(.//*[@class='btn btn-red'])[4]
    Input Text  xpath=(.//*[@type='text'])[2]  Sous-Famille__test
    Input Text  xpath=(.//*[@type='text'])[3]  55555
    Input Text  xpath=.//*[@type='number']  1
    Click Element  xpath=(//a[contains(text(),'Sélectionner')])[1]
    Click Element  xpath=(//a[contains(text(),'azerty')])[2]
    Click Element  xpath=(//a[contains(text(),'Sélectionner')])[1]
    Click Element  xpath=(//a[contains(text(),'testt')])[2]
    Click Element  xpath=//a[contains(text(),'Sélectionner')]
    Click Element  xpath=(//a[contains(text(),'Famile99999')])[2]
    Click Element  xpath=//span[contains(text(),'Nouvelle caractéristique')]
    Select From List By Value  xpath=.//*[@name='characteristic']  3: 3
    Click Element  xpath=(//label[contains(text(),'Toggle')])[2]
    Click Element  xpath=(.//*[@type='checkbox'])[74]
    Input Text  xpath=(.//*[@type='text'])[4]  123456789
    Input Text  xpath=(.//*[@type='number'])[2]  9
    Input Text  xpath=(.//*[@type='number'])[3]  1
    Click Element  xpath=(.//*[@class='btn-add'])[2]
    Click Element  xpath=//button[contains(text(),'ajouter')]
    Click Element  xpath=//button[contains(text(),'Valider')]

Modification d'une Sous-Famille [Robot__test__SousFamille]
    Sleep     5s
    Click Element    //svg
    Click Element    xpath=(//span[@class="filter-text"])[685]
    Click Element    //button[@class="btn btn-light-grey btn-supprimer"]
    Click Element    xpath=(//span[@class="filter-text"])[686]
    Input Text    //input[@name="designation-art"]    Robot__test__SousFamille__edited
    Input Text    //input[@name="subfamilycode"]    11111
    Click Link    //a[@id="dropdown-category"]
    Click Link    //a[@id="dropdown-category"]
    Click Link    //a[@id="dropdown-family"]
    Click Link    xpath=(//a[@class="dropdown-item ng-star-inserted"])[13]
    Click Element    //button[@class="btn btn-red btn-suivant ng-star-inserted"]
    Click Element    //button[@class="btn btn-red btn-valider ng-star-inserted"]

Suppression d'une Sous-Famille
    Sleep     5s
    Click Element    //path[@class="a"]
    Click Element    xpath=(//span[@class="filter-text"])[687]
    Click Element    //button[@class="btn btn-red btn-supprimer"]