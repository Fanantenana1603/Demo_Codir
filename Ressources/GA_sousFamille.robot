*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Ajout d'une nouvelle Sous-Famille [Robot__test__SousFamille]
    Sleep     5s 
    set Selenium Speed    0.5s
    Click Element    xpath=(//i[@class="icon-add"])[4]
    Input Text    xpath://*[@id="designation-art"]    Robot__test__SousFamille
    Input Text    xpath://*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-sous-famille/div[2]/div/div[1]/div/div[2]/input    00000
    Click Link    //a[@id="dropdown-regroupement"]
    Click Link    xpath=(//a[@class="dropdown-item ng-star-inserted"])[3]
    Click Link    //a[@id="dropdown-category"]
    Click Link    xpath=(//a[@class="dropdown-item ng-star-inserted"])[11]
    Click Link    //a[@id="dropdown-family"]
    Click Link    xpath=(//a[@class="dropdown-item ng-star-inserted"])[14]
    Click Element    //button[@class="btn btn-red btn-suivant ng-star-inserted"]
    Click Element    xpath=(//span)[5337]
    Select From List By Value    //select[@name="characteristic"]    3: 3
    Click Element    //label[@for="pour-codification"]
    Input Text    //input[@name="nbrKtere-codification"]    9
    Input Text    //input[@name="ordre-codification"]    1
    Input Text    //input[@name="characteristicchoicevalue"]    AZERTYUIO
    Click Element    xpath=(//button[@class="btn-add"])[2]
    Click Element    //button[@class="btn-ajouter btn btn-red"]
    Click Element    //button[@class="btn btn-red btn-valider ng-star-inserted"]

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