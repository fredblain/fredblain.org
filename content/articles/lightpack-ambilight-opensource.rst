Lightpack
=========

:subtitle: un ambilight open-source 

:date: 2014-03-08 11:30
:tags: lightpack, ambilight, opensource, kickstarter 
:slug: lightpack-ambilight-opensource
:authors: fred

:summary: Billet sur un projet que j'ai découvert alors qu'il n'était encore qu'à l'état de levée de fond sur Kickstarter. Il a depuis fait son petit bonhomme de chemin puisqu'il est aujourd'hui passé en production et est vendu à travers le monde. Ce projet, c'est **Lightpack** !

Billet sur un projet que j'ai découvert alors qu'il n'était encore qu'à l'état de levée de fond sur Kickstarter. Il a depuis fait son petit bonhomme de chemin puisqu'il est aujourd'hui passé en production et est vendu à travers le monde. Ce projet, c'est **Lightpack** !

Kickstarter
-----------

Si vous n'êtes pas familier de ce nom, sachez simplement que `Kickstarter`_ est aux projets technologiques, jeux, mode, etc. ce que `MyMajorCompany`_ est à la musique : une plateforme de financement participatif.
Imaginons 2min que vous ayez l'idée du siècle, mais pas le financement pour la concrétiser. 
Soumettez votre projet sur la plateforme en détaillant ses différents aspects (budgétaires notamment...). 
Dès lors, un appel à financement est lancé pour une 60-aine de jours. 
S'il s'avère que votre proposition suscite les foules, alors vous vous retrouverez peut-être avec une dotation au-delà de ce que vous aviez prévu, vous permettant d'aller plus loin dans votre idée. C'est aussi ça Kickstarter, et c'est exactement ce qui s'est passé pour Lightpack :

- 5,812 backers
- $500,784 de levé de fonds pour un objectif de budget de $261,962

Soit un financement à 191% qui a permis aux porteurs du projet de revoir leurs ambitions à la hausse avec, par exemple, le développement d'une `application Android`_.
On peut donc dire que la campagne de financement a plutôt bien marché pour ce projet... mais qu'en est-il au juste ?

Voyons maintenant ce qu'est Lightpack.

Lightpack
----------

`Lightpack`_, c'est un kit ambilight\* qui diffusera de la lumière autour de l'écran sur lequel il est fixé. Rien de plus, rien de moins !
Concrètement, voilà ce que ça donne : Lightpack - `ambient backlight for your displays`_ (en anglais)

Inspiré de la technologie mise au point par Philips, il fonctionnera avec votre PC, Mac ou encore, par exemple, la Raspeberry-Pi que vous utilisez comme media-center dans votre salon. 
Vous pouvez voir sur `cette page` comment ça marche.

Un confort visuel
-----------------

L'intérêt principal de ce dispositif, présenté comme scientifiquement prouvé, est de réduire la différence d'éclairage entre les scènes sombres et celles plus éclairées, améliorant ainsi le confort visuel.
En théorie avec ce dispositif, vos yeux mettront env. 1min contre 5min auparavant pour s'adapter à une image sombre, et moins de 5sec pour passer d'une image sombre à une image lumineuse.
De fait, vous fatiguez moins, et vous abîmez moins vos yeux.

Et ça ne s’arrête pas là.
L’extension de l’image que permet ce dispositif vous fait davantage profiter de la diagonale de votre écran.
Le principe est simple : dû à une particularité anatomique dont je vous passe `les détails`_, notre zone de vision où l’image est nette, est petite et limitée, le reste étant flou.
C’est alors que notre cerveau travaille à rendre l’ensemble (zone nette + floue) en une image globale, cohérente.
L’extension d’image réalisée par Lightpack vous donnera alors l’impression d’une diagonale plus grande que ce qu’elle est réellement.

Un boîtier de contrôle, des leds et c’est tout
----------------------------------------------

Pour $139 (env. 100€, frais de port inclus) ce kit ambilight se compose d’un boîtier de contrôle et d’un ensemble de 10 leds dont l’assemblage est des plus simples (`gallerie photos`_)

Disposez vos leds derrière votre écran selon la disposition que vous souhaitez : tout autour de l’écran comme sur l’illustration précédente, sur les côtés et le bord supérieur uniquement, ou bien seulement sur les côtés. 
C’est à vous de voir ce qui vous convient le mieux.
Pour ce qui est du boîtier de contrôle, collez-le à l’arrière de votre écran, raccordez-le au secteur pour l’alimentation, et en USB à votre source. 
Et c’est tout. 
Vous avez terminé l’installation de votre kit, et ça vous a pris 15min à peine.
Pour pouvoir l’utiliser, il ne vous reste plus qu’à installer le logiciel de capture dénommé "`Prismatik`_" compatible Windows, Mac OS et GNU/Linux.
Voir `ici`_ pour une utilisation avec une Raspberry-Pi.

**NOTE :** Lightpack se connecte en USB sur la source et non en HDMI compte tenu du fait qu’il aurait fallu payer une licence au consortium dont le coût était trop conséquent pour le projet.
Le principal inconvénient à cette alternative est que vous ne pouvez pas brancher votre kit directement sur votre TV, même si celle-ci dispose d’un port USB. Il est nécessaire que la source puisse faire tourner le logiciel de capture.

Un projet "146%" open source
----------------------------

Lightpack est un projet totalement open source. Tout, du circuit imprimé, des composants, en passant par les codes sources des logiciels et du firmware est sous licence `GPL`_. Les porteurs du projet vont jusqu’à revendiquer avoir conçu leur circuit imprimé pour faciliter le hacker amateur et encourager le Do-It-Yourself.
Si vous êtes intéressé et souhaitez contribuer à ce projet, soulever une amélioration, proposer un nouveau plug-in ou plus simplement jeter un œil aux codes sources et autres spécifications techniques, toutes les informations sont sur le repo `Github officiel`_ du projet !


Voilà, si ce modeste billet vous a convaincu comme j’ai pu l’être de l’intérêt d’un tel dispositif (actuellement, j’en possède 2 !), `calculez combien il vous en faut`_ par rapport à la diagonale de votre écran, puis rendez-vous sur le `Lightpack store`_.
Votre kit vous sera expédié de Hong-Kong sous 1 à 3 jours ouvrés.
Chaque kit dispose d’une `garantie`_ de 1 an.

**ENJOY!**


.. _Kickstarter: https://www.kickstarter.com/
.. _MyMajorCompany: http://www.mymajorcompany.com/
.. _application Android: https://www.kickstarter.com/projects/woodenshark/lightpack-ambient-backlight-for-your-displays/posts/669889
.. _Lightpack: http://lightpack.tv/
.. _ambient backlight for your displays: https://www.youtube.com/watch?v=KQWhYzBu5V8
.. _cette page: http://lightpack.tv/images/howitworks.jpg
.. _les détails: http://lightpack.tv/science
.. _gallerie photos: https://plus.google.com/u/0/photos/+MikhailSannikov/albums/5867069291294378561
.. _Prismatik: http://lightpack.tv/downloads
.. _ici: https://fredblain.org/archives.html
.. _GPL: http://www.gnu.org/licenses/gpl.html
.. _Github officiel: https://github.com/Atarity/Lightpack
.. _calculez combien il vous en faut: http://lightpack.tv/faq#multipack
.. _Lightpack store: http://store.lightpack.tv/products/lightpack
.. _garantie: http://lightpack.tv/warranty
