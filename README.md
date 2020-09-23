# DebuffVitalsFr

**DebuffVitalsFr** est un plugin pour _le Seigneur des Anneaux Online_ qui permet de traquer plusieurs cibles et de garder un oeil sur leur moral, puissance, corruptions et effets spécifiques.  
Ce plugin est une traduction française de [DebuffVitals](https://github.com/grimmerthan/DebuffVitals), un plugin créé par Grimmerthan. La version française a pour objectif de fonctionner avec le client LOTRO français et ne fonctionne pas si le jeu est dans une autre langue.

* * *

**DebuffVitalsFr** is a french translated version of the plugin [DebuffVitals](https://github.com/grimmerthan/DebuffVitals) from Grimmerthan for _the Lord of the Rings Online_. My goal is to translate effects to work with the french game client.

* * *

Traductions `(94/155)` :

-   Commun : `6/6`
-   Béornide : `5/13`
-   Cambrioleur : `9/13`
-   Capitaine : `0/8`
-   Champion : `7/8`
-   Gardien : `8/8`
-   Chasseur : `11/12`
-   Maître du savoir : `25/25`
-   Ménestrel : `3/8`
-   Gardien des runes : `10/14`
-   Sentinelle : `0/30`
-   Effets de joueur : `10/10`

## FAQ

### Comment l'installer ?

Pour l'instant toutes les traductions ne sont pas finies. Si vous souhaitez l'utiliser je vous  pouvez voir ci-dessus l'avancement des traductions classe par classe.  
Dans le dossier `The Lord of the Rings Online/Plugins` créer un dossier `Lylian` puis déplacez y le dossier `DebuffVitalsFR` et le fichier `DebuffVitalsFr.plugin` présents sur [GitHub](https://github.com/LilianHiault/DebuffVitalsFr.git).  
Ce plugin est un plugin différent de DebuffVitals et peut être installé indépendamment :

-   le plugin original n'est pas requis
-   il ne remplacera pas le plugin original
-   vous pouvez utiliser les deux séparément ou en même temps

### Commandes

J'ai changé les commandes de gestion de profils pour pouvoir utiliser le plugin en français en en anglais en même temps. Les commandes sont donc accessible via `/dbvfr` ou `/debuffvitalsfr` (au lieu de `dbv` ou `debuffvitals`).  
Les autres commandes restent identiques et vous pouvez les obtenir en jeu grâce à `/dbvfr help` ou `/debuffvitalsfr help` dans la fenêtre de discussion.
Voici une liste des commandes :

-   `save <nom>` : sauvegarde le profil actuel avec son <nom>
-   `list` : affiche la liste des profils enregistrés
-   `load <nom>` : charger le profil <nom>
-   `delete <nom>` : supprime le profile <nom>
-   `help` : affiche la liste des commandes
-   `save settings` : sauvegarde les paramètres

### Comment aider ?

J'ai besoin des traductions du jeu français pour la liste des effets dans `DebuffVitalsFr/Constants.lua`. N'hésitez pas à compléter ces traductions et à envoyer une pull request.  
Si toucher au code vous fait peur vous pouvez aussi m'aider en vous connectant au jeu en français, afficher les infobulles des différents effets (la touche `H` permet de les fixer) et enregistrer une capture d'écran. La liste des effets à traduire sont dans `DebuffVitalsFr/Constants.lua` et le [wiki anglais](https://lotro-wiki.com/index.php/Skills#Class_Skills) vous permettra retrouver les correspondances. Vous pouvez me joindre sur Discord : `Lylian#0912`.  
Mon but est uniquement de proposer une traduction pour faire fonctionner le plugin sur le client français et non améliorer ou corriger le plugin. Je ne pourrais pas vous aider si vous rencontrez des bugs. De plus je ne suis pas développeur et la langage LUA m'est pour l'instant étrangé donc il se peut que je fasse des erreurs (même les plus bêtes !).

### Pourquoi une version française ?

DebuffVitals recherche parmis les effets de la cible les noms d'une liste d'effets traçables. Les noms des effets étant en anglais lorsque le plugin cherche l'effet, son nom dans le jeu est en français et ne correspond donc pas à celui recherché. Par exemple pour traquer l'effet "Enraciné", le plugin cherche le nom "Root".

## Me contacter

Vous pouvez m'envoyer un message sur Discord : `Lylian#0912`.
