*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${btn ajout categorie}    //*[@id="header2ItemList"]/div[1]/div[2]/button[1]
${designation categorie}    //*[@id="designation-art"]
${code categorie}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-category/div/div[2]/div/div[1]/div/div[2]/input
${order categorie}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-category/div/div[2]/div/div[1]/div/div[3]/input
${ajout regroupement input}    //*[@id="dropdown-regroupement"]
${ajout regroupement azerty}    //*[@id="affiliation-categorie-content"]/div/div/div[2]/div/div/div/a[3]
${bouton valider categorie}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-category/div/div[3]/button[2]
${Action categorie}    //*[@id="accordionSubList2"]/div[2]/div[27]/div[1]/div[1]/div/button
${Action modifier categorie}    //*[@id="accordionSubList2"]/div[2]/div[27]/div[1]/div[1]/div/div/div[2]
${Input modification code categorie}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-ajout-category/div/div[2]/div/div[1]/div/div[2]/input
${Action Suppression categorie}    //*[@id="accordionSubList2"]/div[2]/div[27]/div[1]/div[1]/div/div/div[3]
${btn confirmation de suppression categorie}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-confirmation-suppression/div/div[3]/button[2]

#Voir détail d'une catégorie
${icone action}    //*[@id="accordionSubList2"]/div[2]/div[28]/div[1]/div[1]/div/button
${Voir detail}    //*[@id="accordionSubList2"]/div[2]/div[28]/div[1]/div[1]/div/div/div[1]/span
${fermer modale}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-detail-sous-famille/div/div[3]/button

#Modifier catégorie
${modifier categorie}    //*[@id="accordionSubList2"]/div[2]/div[28]/div[1]/div[1]/div/div/div[2]/span
${valider}    xpath=//button[contains(text(),'Valider')]

#Supprimer catégorie
${Supprimer categorie}    //*[@id="accordionSubList2"]/div[2]/div[28]/div[1]/div[1]/div/div/div[3]/span
${confirmer suppression}    //*[@id="modal-article"]/ngb-modal-window/div/div/app-confirmation-suppression/div/div[3]/button[2]

*** Keywords ***
Ajout categorie [Categorie__test__01]   
    [Arguments]    ${btn ajout categorie}    ${designation categorie}    ${code categorie}    ${order categorie}    ${ajout regroupement input}    ${ajout regroupement azerty}    ${bouton valider categorie}
    Set Selenium Speed    0.5s    
    Page Should Not Contain    Categorie__test__01
    Capture Page Screenshot
    sleep     5s
    Click element    ${btn ajout categorie}
    Wait Until Element Is Enabled        ${designation categorie}    timeout=10s
    Input Text    ${designation categorie}    Categorie__test__01
    Input Text    ${code categorie}    TG
    Input Text     ${order categorie}    1
    Click element     ${ajout regroupement input}
    Click element    ${ajout regroupement azerty}
    Sleep    3s
    Click element    ${bouton valider categorie}
    Sleep    3s
    Capture Page Screenshot

Voir Détails catégorie [Categorie__test__01]
    [Arguments]    ${icone action}    ${Voir detail}     ${fermer modale}
    Set Selenium Speed    0.5s
    Click element    ${icone action} 
    Click element    ${Voir detail}
    Click element    ${fermer modale}


Mofication categorie [Categorie__test__01__edited]
    [Arguments]    ${designation categorie}    ${code categorie}    ${modifier categorie}    ${valider}
    Set Selenium Speed    0.5s
    Click element    ${modifier categorie} 
    Wait Until Element Is Enabled        ${designation categorie}    timeout=10s
    Input Text    ${designation categorie}    Categorie__test__01__edited
    Input Text    ${code categorie}    55
    Sleep    2s
    Click element     ${valider}

Suppression categorie [Categorie__test__01]
    [Arguments]    ${icone action}    ${Supprimer categorie}    ${confirmer suppression}
    Sleep    3s
    Click element    ${icone action}
    Click element    ${Supprimer categorie}
    Click element    ${confirmer suppression}