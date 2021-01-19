*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${action famille}    //*[@id="accordionSubList3"]/div[2]/div[76]/div[1]/div[1]/div/button
${Voir détails famille}    //*[@id="accordionSubList3"]/div[2]/div[76]/div[1]/div[1]/div/div/div[1]
${Fermer Détails modale famile}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-detail-sous-famille/div/div[3]/button


${Modifier famille}    //*[@id="accordionSubList3"]/div[2]/div[76]/div[1]/div[1]/div/div/div[2]/span
${Désignation famille}    //*[@id="designation-art"]
${Code Famille}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-famille/div/div[2]/div/div[1]/div/div[2]/input
${ordre affichage famile}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-famille/div/div[2]/div/div[1]/div/div[3]/input
${valider modification famille}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-famille/div/div[3]/button[2]

${Supprimer famille}    //*[@id="accordionSubList3"]/div[2]/div[76]/div[1]/div[1]/div/div/div[3]/span
${confirmation de suppression famille}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-confirmation-suppression/div/div[3]/button[2]
*** Keywords ***
Ajout Famille [Famille_test__01]
    Page Should Not Contain    Famille_test__01
    Sleep    5s 
    Capture Page Screenshot
    Set Selenium Speed    1s 
    Click Element  xpath=(.//*[@class='btn btn-red'])[3]
    Input Text  xpath=(.//*[@type='text'])[2]  Famille_test__01
    Input Text  xpath=(.//*[@type='text'])[3]  XX
    Click Element  xpath=(//a[contains(text(),'Sélectionner')])[1]
    Click Element  xpath=//a[contains(text(),'azerty')]
    Click Element  xpath=//a[contains(text(),'Sélectionner')]
    Click Link    xpath=//*[@id="affiliation-categorie-content"]/div[2]/div/div[2]/div/div/div/a
    Click Element  xpath=//button[contains(text(),'Valider')]
    Sleep    3s

Voir Détails Famille [Famille_test__01]
    [Arguments]    ${action famille}   ${Voir détails famille}    ${Fermer Détails modale famile} 
    Sleep    3s
    set Selenium Speed    0.5s
    Click element    ${action famille}
    Click element    ${Voir détails famille} 
    Click element    ${Fermer Détails modale famile}  

Modifier Famille [Famille_test__01]
    [Arguments]    ${Modifier famille}    ${Désignation famille}    ${Code Famille}    ${ordre affichage famile}    ${valider modification famille}
    Click element    ${Modifier famille} 
    Sleep    3s
    set Selenium Speed    0.5s
    Input Text    ${Désignation famille}    Famille_test__01__edited
    Input Text    ${Code Famille}    F1
    Input text    ${ordre affichage famile}    1
    Click element    ${valider modification famille}

Suppression famille [Famille_test__01__edited]
    [Arguments]    ${Supprimer famille}    ${confirmation de suppression famille}
    Click element    ${Supprimer famille}
    Click element    ${confirmation de suppression famille} 