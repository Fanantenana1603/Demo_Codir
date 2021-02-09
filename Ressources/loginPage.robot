*** Settings ***
Documentation  Se connecter en tant qu'Administrateur dans AGI
...                        En suivant le schema suivant :
...                           1. Login cas non passant [Laisser tout les champs vide]
...                           2. Login cas non passant [Laisser le champ mot de passe vide]
...                           3. Login cas non passant [Laisser le champ login vide]
...                           4. Login cas non passant [Se connecter avec un utilisateur qui n'est pas en base]
...                           5. Login [Se connecter avec les bons identifiants]


...
Library    SeleniumLibrary
Library    FakerLibrary    locale=en_US


*** Variables ***
${url_log}    https://recette.makeitpulse.com/tom-immo
${driver}    chrome
${admin}    rado.andriandranto
${TI}    eric
${validateur}    onya
${verificateur}    franklin
${login KO}    stone 


*** Keywords ***
login_cas_non_passant[Laisser tous les champs vide]
    Sleep     2s
    Click element    xpath://*[@id="formContent"]/div/form/div[4]/button 
    Page Should Contain    Mot de passe ou login erroné, merci de réessayer
    Capture Page Screenshot

login_cas_non_passant[Mail rempli et mot de passe vide]
    [Arguments]    ${admin} 
    Reload Page
    Set Selenium Speed    0.5s
    Input Text    id:mailUser    ${admin} 
    Click element    id:password    
    Click element    xpath://*[@id="formContent"]/div/form/div[4]/button
    Page Should Contain    Veuillez remplir ce champ
    Capture Page Screenshot

login_cas_non_passant[Mail vide et mot de passe rempli]
    Set Selenium Speed    0.5s
    Reload Page
    Clear Element Text    id:mailUser
    Click element    id:mailUser    
    Input Text    id:password      azerty  
    Click element    xpath://*[@id="formContent"]/div/form/div[4]/button
    Page Should Contain    Veuillez remplir ce champ
    Capture Page Screenshot

login_cas_non_passant[Utilisateur qui n'est pas enregistré dans la base] 
    [Arguments]    ${login KO}
    Reload Page
    Set Selenium Speed    0.5s
    Input Text    id:mailUser    ${login KO}
    Input Password    id:password    azerty
    Click element    xpath://*[@id="formContent"]/div/form/div[4]/button

login_cas_passé 
    [Arguments]    ${admin}
    Reload Page
    Set Selenium Speed    0.5s
    Input Text    id:mailUser    ${admin}
    Input Password    id:password    azerty
    Click element    xpath://*[@id="formContent"]/div/form/div[4]/button 