*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${bouton toggle}    //label[@for="catalogueArticle"]
${btn nouveau Pack}    /html/body/app-root/app-list-pack/div[1]/div/div[3]/div[1]/div[2]/div[2]/button
${nom Pack}    //*[@id="nom-pack-article"]
${Name}    Robot__Pack__test
${Valider ajout}    //*[@id="modal-container"]/ngb-modal-window/div/div/app-modification-pack/div[3]/button[2]
*** Keywords ***
Création d'un nouveau Pack [Robot__Pack__Test]
    [Arguments]    ${Name}    ${bouton toggle}    ${btn nouveau Pack}    ${nom Pack}    ${Valider ajout}
    Sleep    5s
    set Selenium Speed     0.5s
    Click element    ${bouton toggle}
    Sleep    3s   
    page Should not contain    ${Name}
    Capture Page Screenshot
    Click Element    //span[@class="textButton"]
    Input Text    //input[@name="nom-pack-article"]    ${Name}
    Click Element    //button[@class="btn btn-red btn-valider"]
    Capture Page Screenshot