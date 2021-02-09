# Demo_Codir

# Introduction
Robot framework est un Framework de test d'acceptance en python.

Avantage?
    C'est comme si vous executer votre Cas de test en Squash directement :D et cela avec le rapport de test.
    C'est cool non?

# Sommaire
Installation:
    Pour utiliser robot Framework, vous devez avoir Python installer dans votre machine.
    Si Python est déjà installer, vous pouvez installer "RobotFramework" en tapant la ligne de commande suivant dans un terminal

    # pip install robotframework

    Ce commande instal uniquement le Framework, mais pour travailler bien convenablement il vous faut aussi la librairie Selenium. Pour cela taper dans un terminal la commande suivant:

    # pip install robotframework-selenium2library

    Pour plus de détail, aller faire un tour sur le site officiel des packages python

    https://pypi.org/


IDE
    L'avantage avec Python, il n'a pas bésoin d'un IDE en particulier.
    On peut parfaitement faire du code Python avec : Sublime text, VS Code, Atom, PyCharm, ...
    Mais de préference avec un IDE qui possède un terminal pour lancer le programme.


Test à executer
    -Authentification Admin
    -Gestion des utilisateurs [Utilisateur existant en base et qui n'est pas en base]
    -Gestion des Articles [regroupement, Catégorie et famille]
    -Gestion des packs [Ajout Pack, Ajout Article dans Pack, modification pack, Suppression article dans pack et Suppression du Pack]
    -Déconnexion


Structure du Dossier
    J'ai regroupé tous les fichiers (Fichier de lancement et les fichier enfant (Cas de test)) dans le dossier "Ressources"

    Pour lancer ce programme, vous devez d'abord dans le dossier "Ressources" en tapant "cd Ressources" puis entrée.
    Maintenant vous pouvez lancer le programme en tapant :

    # robot Tom Immo.robot

    Tom Immo.robot est le fichier de lancement et qui contient tous les tests à executer
 