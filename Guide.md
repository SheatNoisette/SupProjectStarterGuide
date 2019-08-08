# Projet Supérieur: Guide de survie

Voici un petit condensé des problèmes rencontrés lors de notre projet, la résolution de ces problèmes, des conseils et les choses à éviter. Ce rapport n’est pas un document officiel, mais un retour d’expérience. Lire ceci permettra d’éviter au moins 75% des erreurs classiques, libre à vous de les suivre ou non...

## Conseils à la réalisation de votre projet de jeu vidéo

Réaliser un jeu vidéo est difficile, pour vous faire gagner du temps voici une compilation de conseils mis en forme de liste afin d'être plus lisible.

### Pré-conception du jeu

* __Une idée trop ambitieuse est une mauvaise idée.__ Vous ne chamboulerez pas le monde du jeu vidéo.

* __Un projet multijoueur en ligne peut s’avérer très complexe à mettre en place.__
  
* __Se mettre en équipe avec une personne hors de son cercle d’ami peut s’avérer plus productif.__
  
* __La première impression est importante, mais évitez de réaliser une coquille vide.__ La qualité de la modélisation 3D, des sprites 2D ou des cartes est tout aussi importante que le code. Essayez d'obtenir un bon équilibre entre le code et la qualité graphique.

### Gestion d’équipe

* __Toujours aider une personne en difficulté.__ Bien sûr, celle-ci ne doit pas se reposer entièrement sur quelqu’un pour faire son travail à sa place.
* __Vous avez le droit de ne pas savoir comment réaliser une chose en particulier.__ Faites une rapide évaluation de chacun des membres de l'équipe afin d'exploiter les talents de chacun. Il est rare qu'une équipe soit parfaitement homogène.
* __Discord, IRC ou Slack ne permettent pas toujours de communiquer efficacement.__ Privilégiez un endroit calme où toute l’équipe peut s’installer et échanger, surtout lors des périodes de soutenances.
  
* __Réaliser un planning, même incomplet / imprécis.__

### Contrôle de version et gestion du code source

* __Utilisez un système de contrôle de versions tel que Git/Mercurial/SVN. L’échange de clés USB est à proscrire, c’est une perte de temps.__ De plus, si vos ordinateurs sont volés ou endommagés et que ne vous possédez pas une sauvegarde, vous avez tout perdu.

* __Ne travaillez pas sur la branche principale.__ Il est courant et “plus aisé” de développer sur la branche principale. Or, dès que quelqu’un fait un commit et push, tout le monde perd ses changements lors d’une mise à jour. Il est recommandé de faire une branche par personne.

* __Faites des push réguliers.__

* __Fusionnez régulièrement les différentes branches de l’équipe.__ Si vous travaillez par branche, vous devez fusionner au minimum chaque semaine et vérifiez que tout fonctionne. Pensez aussi à mettre à jour ou à recréer des branches pour tous les membres de toute l’équipe.

### Multijoueur

* __Si votre projet possède un mode multijoueur, celui-ci doit être implémenté en priorité.__ La plus grosse erreur lors de la réalisation d’un jeu possédant un mode multijoueur est de l’implémenter au milieu du développement de votre jeu. Ainsi, il y a de fortes chances que votre projet soit scindé en deux: Une partie à un seul joueur et une autre intégrant les fonctionnalités multijoueur. Cette dernière aura toujours du retard sur la version à un seul joueur. Sans compter la fragmentation du code.

* __Le mode à un seul joueur doit être un serveur local privé à un joueur.__
Utiliser des Sockets directement est du suicide. Des bibliothèques telle que [Photon](https://www.photonengine.com/en-us/Photon) peuvent vous aider. Celle-ci dispose de nombreux tutoriels et d'une documentation correcte.
* __N'utilisez pas UNet.__ UNet est en cours d’abandon, il est possible que des fonctionnalitées ne fonctionne plus du jour au lendemain. (https://blogs.unity3d.com/2018/08/02/evolving-multiplayer-games-beyond-unet/)

### Unity

* __Évitez d’intégrer des assets venant de l’Asset Store juste pour prendre un seul asset.__ Ceci alourdit considérablement la compilation, la taille du projet et le temps de synchronisation si vous utilisez la collaboration d’Unity.
  
* __Si vous avez des messages d’erreur sur l’outil de Collaboration d’Unity sans rien modifier, vérifiez si les serveurs sont hors-ligne et évitez de faire des push.__ Des doublons de commits peuvent apparaître.
  
* __Utilisez la dernière version stable de Unity lors de la création de votre projet.__
  
* __Ne changez pas de version en cours de route, Unity ne supporte pas l’importation d’ancien projet.__ Il sera nécessaire de refaire beaucoup de *prefabs* à la main. De plus, il est possible que Unity ne prenne plus en charge certaines fonctionnalités sur lesquelles vous vous reposez.
  
* __Utilisez des tutoriels utilisant une version très proche de la vôtre.__ Par exemple, si vous utilisez la version 2017.3, utiliser un tutoriel utilisant Unity 2017.4 peut être un bon choix.
  
* __Évitez les abus de tutoriels.__ Lire la documentation peut parfois bien plus vous aider.
  
* __Compilez régulièrement une version hors éditeur (“Stand-alone”).__ Ce qui peut marcher sur l’éditeur d’Unity ne fonctionnera peut-être pas sur une version compilée à part.

* __Sauvegardez votre projet compilé et ne faites pas confiance à l’éditeur de Unity.__ Il est recommandé de toujours posséder une version compilée et fonctionnelle de votre projet même si celle-ci est ancienne. Si par malheur, vous n’avez plus de temps pour implémenter une fonctionnalité et que votre jeu ne fonctionne plus du tout, vous devez posséder une version jouable de votre jeu. Si vous utilisez les services de Unity proposant le Cloud Build, vous n’avez pas de soucis à vous faire, mais vérifiez régulièrement si la compilation se passe sans encombre : Il est possible que votre jeu ne compile plus du tout. Pensez à activer les notifications par mail et activer “Autobuild”.

* __Concentrez vous sur la version Windows.__ Unity est un moteur de jeu multiplateforme, mais rien de vous empêche d’adapter votre jeu sur d’autres supports. Une version Windows pleinement fonctionnelle vaut plus que des versions Windows, Mac et Linux boîteuses.
  
* __Anticipez le temps de compilation.__ Au fur et à mesure du développement de votre projet, votre jeu va s’alourdir. La compilation, logiquement, va être de plus en plus longue. Compiler une version de démonstration au dernier moment peut être fatal.
  
* __Forcez vous à garder une structure de dossier cohérente.__ Il n’y a rien de plus énervant que d’avoir des assets en double ou des scripts dans des dossiers de modèles 3D. On s’y perd rapidement.
  
* __Si votre jeu comporte beaucoup d'éléments graphiques ou de scripts, l'exportation WebGL peut casser.__ Vous pouvez tomber sur une erreur de manque de mémoire après quelques minutes de jeu.

### Code

* __Évitez de trop dépendre du code des autres.__ Essayez de séparer votre code du code des autres. Si une fonctionnalité repose beaucoup sur le travail d’un autre et que celui-ci s'effondre, vous aurez deux fois plus de boulot. Bien sûr, il y a des cas où utiliser le code des autres est indispensable.
  
* __Des fonctions sont plus coûteuses que d’autres.__ `Debug.Log`, `StartCoroutine` sont des fonction dites coûteuses, celles-ci peuvent ralentir parfois considérablement votre jeu sur de petites configuration. Utilisez un débogueur au maximum à la place de `Debug.Log`. De plus, si vous compilez votre jeu avec les `Debug.Log` cette fonction va écrire dans un fichier de Log, mobilisant inutilement le disque dur.
`StartCoroutine` permet d’exécuter en différé une fonction. Cette fonction peut s’avérer suffisante pour ouvrir, par exemple, une porte quelques dizaine de secondes plus tard. Mais elle reste inadaptée pour des choses se répétant plusieurs fois par seconde. Une bonne alternative peut être `Delta.DeltaTime` : (https://docs.unity3d.com/ScriptReference/Time-deltaTime.html, https://unity3d.com/fr/learn/tutorials/topics/scripting/delta-time, https://pressstart.vip/tutorials/2018/07/20/45/building-a-timer.html).

* __Une classe comportant plus de 1000 lignes de script ou une fonction comptant plus d’une centaine de lignes nécessite probablement un re-découpage.__

* __N'hésitez pas à utiliser l’héritage.__ Une arme, un pistolet par exemple, peut être le fils d’une classe abstraite appelée “Arme”.

* __Il ne sert à rien d’optimiser prématurément votre code. Du “code qui marche” est également dangereux__ c’est à dire du code qui est illisible mais fonctionnant correctement.

* __Mélanger du F# et C# est une mauvaise idée.__ Le C# est le seul langage "officiel" d'Unity.

* __Commentez votre code.__

### Rapport de soutenance

* __Ne sous estimez pas la durée de rédaction du rapport de soutenance.__ Pensez à commencer à rédiger le squelette du rapport au moins deux semaines à l'avance.
  
* __Une bibliographie ou des sources sont recommandées.__
  
* __LaTeX est à la fois votre ami et votre pire ennemi.__ LaTeX met en forme automatiquement votre document. Il est recommandé de ne pas essayer de “forcer” une mise en forme particulière sauf si celui-ci génére mal une partie de votre document (un tableau par exemple).

* __Un dépôt Git, Mercurial ou SVN peut être très utile pour les rapports.__ En effet, ces outils peuvent être très puissants sur des fichiers textes. Dans la majorité des cas, il sera aisé de fusionner des branches. Une fusion manuelle est normalement simple. De plus, GitLab ou GitHub proposent des outils de fusions complets, sans mettre directement la main à la pâte à l’aide de Vim ou Emacs. Mais si Git vous effraie, vous pouvez utiliser un éditeur de document LaTeX en ligne tel que [Overleaf](https://fr.overleaf.com).

* __Utiliser un convertisseur OpenDocument/Word/Google Doc vers LaTeX n’est pas une bonne idée.__ En revanche, vous pouvez rédiger votre document sur un logiciel de traitement de texte classique pour bénéficier d’un correcteur orthographique puis intégrer vos parties du rapport dans un document LaTeX.

* __Il est plus facile de créer, éditer et compiler des documents LaTeX sur un système Unix (GNU/Linux, BSD ou macOS) que sous Windows.__

### La présentation

* __Une combinaison de touches permettant de tricher est recommandée.__ Si votre jeu est trop difficile, pensez à ajouter des codes de triche permettant de passer un niveau ou de gagner des vies.

* __Découpez logiquement votre démonstration.__ Si vous choisissez une démo-présentation pour la soutenance finale, c'est à dire que votre jeu est la présentation, décrivez les éléments du jeu dans l'ordre tel que vous le voyez. Présentez ce que le jury voit, introduisez au fur et à mesure les fonctionnalités de votre jeu. Un exemple : vous montrez que vous avez une caméra pouvant être déplacée avec la souris, ensuite que le joueur peut se déplacer et enfin courir. De plus il est important de scénariser votre démonstration afin d'éviter les blancs ou les oublis.
Prenez plusieurs ordinateurs avec vous, chacun disposant d'une copie du jeu et des diapositives.

* __Beaucoup de projecteurs et de salles sont toujours câblés en VGA.__ Pensez à amener un adaptateur HDMI / DisplayPort vers VGA, ce connecteur commence à s'effacer des ordinateurs portables.
  
* __Testez votre présentation sur un projecteur.__ Votre présentation est peut être magnifique, mais n'est pas forcément lisible sur un projecteur. N'hésitez pas à vous déplacer au fond de la salle afin de vérifier la bonne lisibilité de votre présentation.

### Le site internet

Le site internet n’est pas un élément à négliger pour votre projet. Celui-ci peut être statique ou dynamique. Un site statique n’est pas modifiable sans toucher le code source. En revanche, un site dynamique permet d'être modifié sans intervention sur le code source. Pour réaliser votre site internet, vous pouvez utiliser un outil tel que Hugo, Hexo, Gatsby ou Jekyll permettant de réaliser un site statique. Créer un outil sur mesure à partir de zéro n’est pas obligatoire et peut prendre du temps. Le principal avantage de ces générateurs de sites internet statiques est de pouvoir rédiger le contenu de votre site dans un langage de balisage plus pratique que l'HTML tel que le Markdown (https://fr.wikipedia.org/wiki/Markdown) et donc de ne pas nécessiter de grosses connaissances en HTML/CSS. Un cours interactif d’introduction est accessible ici : (https://www.markdowntutorial.com/).
Attention, le Markdown est une spécification ouverte. Chaque développeur est libre de l’implémenter comme il le souhaite. En voici un court rappel:

| Markdown | Sortie |
| --- | --- |
| `# Titre` | # Titre |
`## Sous titre` | ## Sous titre
| `### Sous sous titre` | ### Sous sous titre
| `Texte sans mise en forme particulière` | Texte sans mise en forme particulière |
`**Texte en gras**` | **Texte en gras**|
| `__Texte en italique__` | __Texte en italique__ |

Il est possible de combiner plusieurs tags Markdown en fonction des implémentations : `**__Texte en gras et en italique__**`.

Vous pouvez louer un serveur web pour héberger votre site internet. Vous pouvez vous tourner sur des alternatives gratuites tel que Dyjix ou AlwaysData.

Si vous êtes bricoleur, vous pouvez vous même héberger votre site sur un ordinateur. Faites juste attention à la bande passante, la sécurité de votre serveur et à sa consommation d'électricité. Un Raspberry Pi ou équivalent peut largement suffire. L'achat d'un nom de domaine pour votre équipe n'est pas nécessaire. Il existe des noms de domaines gratuits profitant d'extensions un peu exotiques tels que ceux proposés par Freenom.

**Remarques :**

* __Pensez à faire des sauvegardes régulières de votre site.__ Un accident de votre côté ou de votre hébergeur peut tout à fait arriver.

* __Prendre un serveur dédié pour votre site internet est inutile.__ Sauf si vous souhaitez réutiliser ce serveur plus tard.

## Petit guide pratique sur Git

Personne n’est parfaitement à l’aise sous Git. Voici un rappel des commandes les plus utilisées.

| Commande(s) | Effet |
| --- | --- |
| `git add .` | Ajouter tous les nouveaux fichiers et les fichiers modifiés. |
| `git status` | Voir les fichiers modifiés ou nouvellement créés. |
| `git commit -m “MESSAGE”` | Créer un nouveau commit étiqueté du message “MESSAGE” (Sans les “) |
| `git branch` | Voir toutes les branches locales, c’est à dire les branches stockés sur votre ordinateur.|
| `git checkout -b BRANCHE` | Créer une branche locale possédant le nom BRANCHE basée sur la branche actuelle ce qu'il sera nécéssaire de faire de nombreuses fois si vous suivez ce guide. |
| `git push origin BRANCHE` | pour publier les changements. |
| `git branch -d BRANCHE` |Supprimer la branche ‘BRANCHE’. |

Pour plus d’informations, veuillez consulter [le manuel de Git](https://git-scm.com/docs).

### GitHub et GitLab

Pour votre projet, vous allez probablement utiliser Git. Git permet de travailler de pair-à-pair, mais par sécurité, il est recommandé de choisir une solution d'hébergement Git pour le code source de votre projet. Les deux plus grandes plateformes sont GitHub et GitLab. Chacune de ces plateformes a ses avantages mais aussi ses inconvénients. La plus populaire, GitHub, héberge plus de 69 millions de projets.

Si l'on en reste strictement à la version gratuite de ces deux services (largement suffisante pour un projet scolaire en groupe), la différence majeure entre GitHub et GitLab est que ce dernier permet d'en faire un peu plus. Depuis peu la création de repos privées sur GitHub est devenue gratuite et illimitée mais uniquement pour les utilisateurs seuls (et jusqu'à trois collaborateurs) mais sur GitLab, non seulement la création de repos publiques et privées est illimitée mais elle est aussi ouverte aux organisations (groupe d'utilisateurs avec nombre de collaborateurs illimité) ce qui est plus pratique pour un travail en groupe. L'autre avantage majeur de GitLab est l'intégration en continue (ou CI pour *Continuous Integration*), même si celle-ci n'est pas vraiment utile avec Unity, elle peut l'être pour un site web ou pour vos différents rapports rédigés en LaTeX. La CI intégrée à GitLab permet d'éxecuter et déployer votre application automatiquement à chaque mise à jour de votre code, ce qui peut s'avérer très utile pour déployer un site web statique sans avoir à l'héberger de manière classique. À noter que GitHub peut également héberger des sites web statiques (avec GitHub Pages) et faire de la CI (via des services tiers).

En résumé, le choix entre GitHub et GitLab est avant tout une question de **préférence**, tout ce qui peut être fait sur l'un des deux services peut aussi être fait sur l'autre et inversement. La formule gratuite de GitLab en propose un peu plus que celle de GitHub, mais cela ne vous empêchera pas de collaborer convenablement si vous préférez utiliser ce dernier.

### Problèmes courants

#### Git et GitLFS

__Problème:__ Problème de pointeur de fichiers. Des fichiers disparaissent ou sont vides.

__Solution 1:__ Supprimer et ajouter manuellement les fichiers à nouveau.
**Attention :** Ceci ne corrige pas nécessairement le problème.

__Solution 2:__ Refaire un repo et vérifier que tous les membres de l’équipe ont l’extension GitLFS correctement installée.

#### Unity Collaborate

__Problème :__ Tout le monde peut publier ses changements. Mais il arrive que Unity perde le projet en cours de route.
__Solution :__ Vérifier sur le Dashboard Unity si l’outil Collaborate est bel et bien activé.

__Problème :__ Unity perd le projet en route, mais Collaborate est bel et bien activé.
__Solution :__ Désactiver et réactiver Collaborate.

__Problème:__ Unity semble avoir perdu la collaboration.
__Solution:__ Cliquer sur ‘Start now’ sur l’onglet Collab, Unity va réessayer de vérifier les changements.

## Licence

Ce travail est soumis à la licence "Licence publique Creative Commons Attribution - Utilisation non commerciale 4.0 International".

Rédigé par Benoît “SheatNoisette” et Luca "iralorucrie" Corrieri.
