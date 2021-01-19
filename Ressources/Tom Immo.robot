*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open browser    ${url_log}    ${driver}
Suite Teardown    Close browser

Resource        ../Ressources/loginPage.robot
Resource        ../Ressources/UtilisateurPage.robot
Resource        ../Ressources/GA_regroupement.robot
Resource        ../Ressources/GA_categorie.robot
Resource        ../Ressources/GA_famille.robot
Resource        ../Ressources/AddArticleInPack.robot

*** Test Cases ***
Authentification
    Set Selenium Speed    0.5s
    Maximize browser window
    login_cas_non_passant[Laisser tous les champs vide]
    login_cas_non_passant[Mail rempli et mot de passe vide]    ${admin}
    login_cas_non_passant[Mail vide et mot de passe rempli]
    login_cas_non_passant[Utilisateur qui n'est pas enregistré dans la base]     ${login KO}
    login_cas_passé     ${admin}


Gestion des utilisateurs
    Set Selenium Speed    0.5s
    User in active Storage      ${zone de recherche}    ${Nom utilisateur}    ${matricule}
    User not in active Storage        ${zone de recherche}

Gestion Des Articles [Regroupement]
    Sleep    5s
    Ajout Regroupement [Regroupement__Test__01]     ${ajout regroupement}    ${Ajout Reg designation}     ${Ajout Reg Code}    ${Ajout Reg ordre}    ${Ajout Reg verificateur}    ${franklin}    ${Ajout Verfi}    ${btn Validation reg}    
    Voir détails Regroupement [Regroupement__Test__01]   ${Voir Details}    ${fermeture modale détails}
    Modification Regroupement [Regroupement__Test__01__edited]    ${Modification}    ${Ajout Reg designation}    ${Ajout Reg Code}
    Voir détails Modifié Regroupement [Regroupement__Test__01__edited]   ${Voir Details}    ${fermeture modale détails}
    Suppression du regroupement [Regroupement__Test__01__edited]   

# Gestion Des Articles [Categorie]
#     Ajout categorie [integrationCategoriewithRobot]    ${btn ajout categorie}    ${designation categorie}    ${code categorie}    ${order categorie}    ${ajout regroupement input}    ${ajout regroupement azerty}    ${bouton valider categorie}
#     Voir Détails catégorie [integrationCategoriewithRobot]    ${icone action}    ${Voir detail}     ${fermer modale}
#     Mofication categorie [Categorie edited]    ${designation categorie}    ${code categorie}    ${modifier categorie}    ${valider modification}
#     Suppression categorie [Categorie edited]    ${icone action}    ${Supprimer categorie}    ${confirmer suppression}
# Gestion pack
#     Ajout article dans un pack existant        #${article 01}    ${article 02}    ${article 03}    ${article 04} 
    
Deconnexion_Admin
    Go to    https://recette.makeitpulse.com/tom-immo/articles/list
    Click Element  xpath=.//*[@class='tool-link tool-user']
    Click Element  xpath=.//*[@class='text-logout']



