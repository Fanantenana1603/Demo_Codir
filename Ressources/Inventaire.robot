*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${btn Création nouvelle fiche d'inventaire}        /html/body/app-root/app-listeinventaire/block-ui/div[1]/div/div[4]/div/div[2]/div[2]/a[2]
${site d'inventaire}        /html/body/app-root/app-listeinventaire/block-ui/div[1]/div/div[2]/div[2]/div[1]/div/div[2]/div/div[1]/app-dropdown-autocomplete/div/input
${date debut icône}        //*[@id="creerInventaire"]/div/div/div[2]/div/form/div[3]/div[1]/div/a/i
${date de fin icône}        //*[@id="creerInventaire"]/div/div/div[2]/div/form/div[3]/div[2]/div/a/i
${Choisir planificateur}        //*[@id="cdPinventaire"]
${btn valider création inventaire}        /html/body/app-root/app-listeinventaire/block-ui/div[2]/div/div/div[3]/button[2]

*** Keywords ***
Création d'une nouvelle fiche d'inventaire
    [Arguments]    ${btn Création nouvelle fiche d'inventaire}     ${site d'inventaire}     ${date debut icône}    ${date de fin icône}    ${Choisir planificateur}    ${btn valider création inventaire}  
    click element        ${btn Création nouvelle fiche d'inventaire}
    input text        ${site d'inventaire}
    click element    ${date debut icône}
