*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#Gestion des utilisateurs
User in active Storage    
    [Arguments]    ${zone de recherche}    ${Nom utilisateur}    ${matricule}
    Sleep     5s
    Set Selenium Speed    0.5s
    Go to    ${utilisateur_url} 
    Click element    xpath:/html/body/app-root/app-liste-user/div[1]/div/div[2]/div/div[1]/div[2]/div[1]/button
    Input Text    ${zone de recherche}    Fanantenana
    Page Should Contain    ${Nom utilisateur}
    Page Should Contain    ${matricule}
    Capture Page Screenshot
    Click element    xpath:/html/body/app-root/app-ajout-recherche/div[1]/div[2]/div/div/form/div[3]/button

User not in active Storage 
    [Arguments]    ${zone de recherche}   
    Sleep     10s
    Set Selenium Speed    0.5s
    Input Text    ${zone de recherche}    stone
    Click element    xpath:/html/body/app-root/app-ajout-recherche/div[1]/div[2]/div/div/form/div[3]/button
    Sleep    10s
    Page Should Contain    Aucun résultat correspondant à votre recherche.
    Capture Page Screenshot
    

*** Variables ***
# Gestion des utilisateurs
${utilisateur_url}    https://recette.makeitpulse.com/tom-immo/user/list
${utilisateur_identifiant}    //a[contains(text(),'Utilisateurs')]
${zone de recherche}    filtreUser
${Retour au liste des utilisateurs}    /html/body/app-root/app-ajout-recherche/div[1]/div[1]/div/div[2]/a
${modifier profil}    /html/body/app-root/app-liste-user/div[1]/div/div[2]/div/div[2]/table/tbody/tr[14]/td[14]/div/button[1]
${status utilisateur}    //*[@id="modifUtilisateur"]/div/div/div[2]/div/div[2]/div/div[2]/div/div[2]/div/label
${valider modification profil}    //*[@id="btnValider"]
${Nom utilisateur}    RAKOTONDRAMANANA
${matricule}    IT0263


