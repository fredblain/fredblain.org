Raspberry-Pi + Lightpack = Hyperion !
=====================================

:subtitle: how to use a Lightpack w/ your R-pi? Hyperion!

:date: 2014-03-08 12:30
:tags: raspberry-pi, lightpack, hyperion 
:slug: rpi-lightpack-hyperion
:authors: fred

:summary: Le voilà, mon premier billet "retour d’expérience", et il est consacré au couplage d’une Raspberry-Pi avec un kit ambilight de type *Lightpack*.

Le voilà, mon premier billet "retour d’expérience", et il est consacré au couplage d’une Raspberry-Pi avec un kit ambilight de type *Lightpack*.

Raspberry-Pi
------------

On ne présente plus la `Raspberry-Pi` (en anglais), ou "R-Pi", qui a fêté ses 2 ans pour 2,5 millions d’exemplaires vendus il y a de cela quelques jours (`source`_ en anglais).
Personnellement je possède le modèle B, que je fais tourner sous `Kodi`_ (ex `Raspbmc`_) pour un media-center de salon associé à un périphérique de stockage réseau (NAS en anglais).
Voilà pour la petite histoire.

Lightpack
---------

Si le mot `Lightpack`_ ne vous dit rien, alors je vous invite à lire mon `billet qui lui est consacré`_ avant de poursuivre.
Car ce qui nous intéresse ici, c’est **Hyperion** !

Hyperion
--------

`Hyperion`_ est une implémentation open source pour capturer le flux vidéo d’une R-Pi fonctionnant sous Raspbmc.

J’ai écrit "une" implémentation parce qu’il en existe en effet plusieurs, la plus connue/utilisée étant `Boblight`_.
Autant le dire de suite... bien que recommandée par le projet Lightpack, cette dernière n’a jamais fonctionné chez moi. 
Pour ce qui est des autres, je ne les connais pas.
Si vous souhaitez tout de même tenter votre chance avec Boblight, voir le `tutoriel`_ d’Andrew Pawelski.
À noter que c’est lui qui migra vers Hyperion et me le fit connaître.

Alors, pourquoi lâcher Boblight (considérant qu’il fonctionne) au profit d’Hyperion me direz-vous ?
Jetons un œil aux revendications (les plus intéressantes) de ce dernier : (liste complète `ici`_ en anglais)

- Faible charge CPU (inférieure à 2 % pour une 50-aine de leds) ;
- Un utilitaire en ligne de commande dénommé *hyperion-remote* pour tester et aider à la configuration d’Hyperion ;
- HyperCon, un outil pour générer un fichier de configuration complet ;
- Détection des bandes noires ;
- Serait 15 fois plus rapide que Boblight.

Sur ce dernier point, je ne peux ni confirmer ni infirmer ces dires puisque je n’ai jamais pu faire la comparaison.
Quoi qu’il en soit j’étais convaincu et j’ai donc suivi `ce tutoriel`_ pour son installation sur ma R-Pi.
Je n’ai cette fois eu aucun problème.

Configuration d’Hyperion
------------------------

On vient de le voir, Hyperion dispose d’un outil dédié : `HyperCon`_, permettant de générer un fichier de configuration adapté à votre installation.

Codé en Java, il fait bien son boulot et vous enlève une sacrée épine du pied... 
Et bien que son interface soit assez accessible, cette `aide à la configuration`_ avec un tour d’horizon des termes techniques peut vous être des plus utiles !

**Attention, petit conseil...**

À noter toutefois que lorsque vous commencerez à utiliser HyperCon, veillez à bien connaître l’ordre de vos leds. 
Ce point peut vous paraître trivial, mais vous seriez surpris de voir que les choses ne sont pas si évidentes... ce fut le cas pour moi.
Pour ce faire, je vous conseille de procéder de la façon suivante : ajouter vos leds une par une dans votre configuration. 
De cette manière, vous saurez laquelle est la 1ère, la 2nde, etc.
Chaque fois que vous rajouterez une led à votre configuration, il vous faudra arrêter le service *hyperion* : 

::

  initctl stop hyperion
  
copier ensuite votre configuration dans /etc :

::

  sudo cp *votre-fichier-config.json*  /etc/hyperion.config.json

puis redémarrer le service :

::

  initctl start hyperion

Une fois que ce travail fastidieux, mais ô combien important sera terminé, vous pourrez activer le service pour l’ensemble de vos leds. 
Si comme moi vos leds ne sont pas dans l’ordre, il vous suffit de refaire les branchements sur le boîtier de contrôle de sorte qu’elles le soient.

Pour finir, il est conseillé de bien calibrer vos leds (réglage des gamma, etc.) pour garantir un affichage fidèle des couleurs. 
Mais là encore, pour vous aider dans ce calibrage qui peut prendre plusieurs heures, Andrew P. a pensé à vous en proposant des sources vidéo que vous trouverez dans la partie 5 « Tuning the Colours » de `son tutoriel`_.
Personnellement, je n’ai pas (encore ?) calibré mes couleurs, bien que pour les noirs notamment ce ne serait pas du luxe (affichage pourpre)... et ça marche déjà très bien.

Voilà, j’espère vous avoir donné les clés pour utiliser Hyperion chez vous si vous disposez d’une R-pi et d’un kit ambilight.
Et si vous voulez y jeter un œil, mon fichier de configuration est disponible sur mon `Github`_.

**EDIT:** un tutoriel très complet sur l'installation et la configuration de votre kit ambilight avec Hyperion sur R-Pi est disponible `par ici`_.


.. _Raspberry-Pi:  http://www.raspberrypi.org/
.. _source: http://www.raspberrypi.org/archives/6299
.. _Kodi: https://kodi.tv/
.. _Raspbmc: http://www.raspbmc.com/
.. _Lightpack: http://lightpack.tv
.. _billet qui lui est consacré: http://blog.fredblain.org/2014/03/lightpack-un-ambilight-open-source
.. _Hyperion: https://github.com/tvdzwan/hyperion/wiki
.. _Boblight: http://code.google.com/p/boblight/
.. _tutoriel: http://ajpawelski.wordpress.com/how-to-raspberry-pi-raspbmc-and-a-lightpack/
.. _ici: https://github.com/tvdzwan/hyperion/wiki#wiki-introduction
.. _ce tutoriel: https://github.com/tvdzwan/hyperion/wiki/Installation
.. _HyperCon: https://raw.github.com/tvdzwan/hypercon/master/deploy/HyperCon.jar
.. _aide à la configuration: https://github.com/tvdzwan/hyperion/wiki/Configuration
.. _son tutoriel: http://ajpawelski.wordpress.com/how-to-raspberry-pi-raspbmc-hyperion-and-a-ws2801-strip-2/#part3
.. _Github: https://github.com/FredBlain/hyperion
.. _par ici: http://maison-et-domotique.com/books/lightpack-hyperion-raspberry-pi-ambilight-sur-votre-tv
