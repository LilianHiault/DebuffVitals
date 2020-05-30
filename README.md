# DebuffVitalsFr

**DebuffVitalsFr** est un plugin pour _le Seigneur des Anneaux Online_ qui permet de traquer plusieurs cibles et de garder un oeil sur leur moral, puissance, corruptions et effets spécifiques.  
Ce plugin est une traduction française de [DebuffVitals](https://github.com/grimmerthan/DebuffVitals), un plugin créé par Grimmerthan. La version française a pour objectif premier de fonctionner avec le client LOTRO français.

* * *

**DebuffVitalsFr** is a french translated version of the plugin [DebuffVitals](https://github.com/grimmerthan/DebuffVitals) from Grimmerthan for _the Lord of the Rings Online_. My goal is to translate effects to work with the french game client.

* * *

Traductions `(22/155)` :

-   Commun : `5/6`
-   Beornide : `0/13`
-   Cambrioleur : `0/13`
-   Capitaine : `0/8`
-   Champion : `7/8`
-   Gardien : `0/8`
-   Chasseur : `0/12`
-   Maître du savoir : `0/25`
-   Ménestrel : `0/8`
-   Gardien des runes : `0/14`
-   Sentinelle : `0/30`
-   Effets de joueur : `10/10`

## FAQ

### Comment l'installer ?

Pour l'instant le plugins à toujours les mêmes soucis que l'original pâr rapport au client français, il n'est donc pas pertinent de l'installer.  
Dans le dossier `The Lord of the Rings Online/Plugins` créer un dossier `Lylian` puis déplacez y le dossier `DebuffVitalsFR` et le fichier `DebuffVitalsFr.plugin`.  
Ce plugin est un plugin différent de DebuffVitals et peut être installé indépendamment :

-   le plugin original n'est pas requis
-   il ne remplacera pas le plugin original
-   vous pouvez utiliser les deux séparément ou en même temps

### Pourquoi une verison française ?

DebuffVitals recherche parmis les effets de la cible les noms d'une liste d'effets traçables. Les noms des effets étant en anglais lorsque le plugin cherche l'effet, son nom dans le jeu est en français et ne correspond donc pas à celui recherché. Par exemple pour traquer l'effet "Enraciné", le plugin cherche le nom "Root".

### Comment aider ?

J'ai besoin des traductions du jeu français pour la liste des effets dans `DebuffVitalsFr/Constants.lua`. N'hésitez pas à compléter ces traductions et à envoyer une pull request.  
Mon but est uniquement de proposer une traduction pour faire fonctionner le plugin sur le client français et non améliorer ou corriger le plugin. Je ne pourrais pas vous aider si vous rencontrez des bugs. De plus je ne suis pas développeur et la langage LUA m'est pour l'instant étrangé donc il se peut que je fasse des erreurs (même les plus bêtes !).
