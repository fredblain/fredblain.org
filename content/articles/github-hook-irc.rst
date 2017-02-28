Github hook for IRC
===================

:subtitle: paramétrer et activer un Github hook pour IRC

:date: 2014-05-26 18:39
:tags: haum, github, irc
:slug: github-hook-irc
:authors: fred

:summary: Nous avons récemment mis en place au `HAUM`_ des Github hooks (ou services) sur nos principaux `dépôts Git`_, afin que les membres de l'association soient automatiquement notifiés sur `IRC`_ des évènements intéressants y survenant (push, pull-request, commentaires, autres).

Nous avons récemment mis en place au `HAUM`_ des Github hooks (ou services) sur nos principaux `dépôts Git`_, afin que les membres de l'association soient automatiquement notifiés sur `IRC`_ des évènements intéressants y survenant (push, pull-request, commentaires, autres).

Comment ça fonctionne ?
-----------------------

Lorsqu'un évènement survient sur un dépôt pour lequel un Github hook a été activé, un bot se connecte automatiquement au chan IRC renseigné dans sa configuration pour y faire état de cet évènement.
Le bot n'a ensuite plus qu'à se déconnecter jusqu'au prochain évènement.

Prenons des cas réels de notification pour illustrer concrètement ce billet :

Par exemple, un `push` sur le dépôt "website" du HAUM :

::

    [19:48]  <GitHub_Bot> [website] FredBlain pushed 1 new commit to master: http://git.io/PdtPXQ
    [19:48]  <GitHub_Bot> website/master c030742 feedoo: (planet) add new source: jblb's blog.

ou un commentaire  sur le dépôt "haum_internal" :

::

    [01:04]  <GitHub_Bot> [haum_internal] neomilium comment on issue #5: Tu n'essayerai pas de nous dire qu'un de tes amis nous offre la production... http://git.io/7q4SmQ

"GitHub_Bot" étant ici le nickname IRC que nous avons donné au Github hook lorsque celui-ci se connecte au chan.

Alors certains détracteurs pourraient dire que ce service fait doublon avec la notification par mail.
À ceux-là je répondrai que :

1. c'est vrai ;
2. mais l'un n'empêche pas l'autre ;
3. et puis tous les membres de l'association n'utilisent pas GitHub ;
4. et entre les dépôts privés, professionnels, associatifs & co, certains d'entre nous ont choisi de désactiver les notifications mail, n'en recevant que trop déjà...
5. raison X ou Y ;
6. ou encore simple envie de vouloir savoir comment ça marche ;)

Activer le service pour IRC
---------------------------

Tout cela n'est, en réalité, pas bien compliqué... voir même très simple puisque nous avons tout ce qu'il faut à disposition !
Github a en effet fait le plus dur, il nous reste plus qu'à cliquer, ou presque... voyons cela !

Pour commencer, rendez-vous dans les paramètres de votre dépôt, puis dans "webhooks & services".
De là, vous avez le choix :  soit vous créez un "webhook" ou alors vous ajoutez un service.

Recherchez et ajoutez le service pour IRC. Vous devriez désormais être dans la page de configuration de celui-ci.
Toutes les options permettant de le personnaliser y sont documentées.
Personnellement, je vous conseille de cocher *Message without join* afin de ne pas être polluer par les annonces de (dé)connexion de votre bot, et de laisser décocher *Long url* : cela activera le service `Git.io`_ (le raccourcisseur d'url de GitHub) qui vous évitera une notification trop verbeuse.

Il vous est alors proposé de diagnostiquer votre service afin de valider son bon fonctionnement, avec la commande :

::

    curl -u "USERNAME" -in https://api.github.com/repos/USERNAME/REPONAME/hooks

Testons cette commande sur le dépôt "website" du HAUM. On obtient :

::

    [
          {
            "url": "https://api.github.com/repos/haum/website/hooks/1234567",
            "test_url": "https://api.github.com/repos/haum/website/hooks/1234567/test",
            "id": 1234567,
            "name": "irc",
            "active": true,
            "events": [
              "push",
              "issues",
              "issue_comment",
              "pull_request"
            ],
            "config": {
              "server": "chat.freenode.net",
              "port": "6667",
              "room": "#haum",
              "nick": "GitHub_Bot",
              "branch_regexes": "",
              "nickserv_password": "",
              "password": "",
              "message_without_join": "1"
            },
            "last_response": {
              "code": 200,
              "status": "active",
              "message": "OK"
            },
            "updated_at": "2014-05-28T17:48:18Z",
            "created_at": "2014-05-22T10:11:52Z"
          }
        ]

Jetons un oeil à ce diagnostic.
On retrouve les informations sur notre hook, à savoir son url (et celle de test), ainsi que son ID à sept chiffres (ici remplacé par 1234567), son nom qui nous indique qu'il s'agit bien d'un service pour IRC, et son statut actif :

::

    "url": "https://api.github.com/repos/haum/website/hooks/1234567",
    "test_url": "https://api.github.com/repos/haum/website/hooks/1234567/test",
    "id": 1234567,
    "name": "irc",
    "active": true,

Vient ensuite la liste des évènements Git notifiés par défaut par le service...

::

    "events": [
    "push",
    "issues",
    "issue_comment",
    "pull_request"
    ],

... évènements notifiés sur le chan IRC dont nous retrouvons les informations de configuration juste après :

::

    "config": {
    "server": "chat.freenode.net",
    "port": "6667",
    "room": "#haum",
    "nick": "GitHub_Bot",
    "branch_regexes": "",
    "nickserv_password": "",
    "password": "",
    "message_without_join": "1"
    },

Le dernier bloc nous indique l'état du service la dernière fois qu'il fut interrogé, ainsi que les dates de création et de dernière modification de celui-ci :

::

    "last_response": {
    "code": 200,
    "status": "active",
    "message": "OK"
    },
    "updated_at": "2014-05-28T17:48:18Z",
    "created_at": "2014-05-22T10:11:52Z"

Si cela vous intéresse, je vous propose dans la prochaine partie de ce billet de voir comment modifier les évènements notifiés par votre nouveau service.

Gérer la liste des évènements notifiés par GitHub_Bot
-----------------------------------------------------

Pour accéder à la liste des évènements traités pour un dépôt donné, il faut utiliser la commande *curl* suivante :

::

    curl -u '{votre-pseudo-github}' -H "Accept: application/json"
    https://api.github.com/repos/{pseudo-du-propriétaire}/{nom-du-repo}/hooks

Ce qui nous donnerait dans le cadre du HAUM :

::

    curl -u 'FredBlain' -H "Accept: application/json" \
    https://api.github.com/repos/haum/website/hooks

Et pour laquelle on obient :

::

    "url": "https://api.github.com/repos/haum/website/hooks/1234567",
    "events": [
    "push",
    "pull_request"
    ],

On remarque alors que seuls les *push* et les *pull-request* sont sujets à notification. Tout autre évènement n'est pas notifié.
On utilise alors l'ID à sept chiffre vu précédemment pour  activer/désactiver la notification d'un ou plusieurs évènements particuliers.

Par exemple, si l'on souhaite ajouter la notification quant aux commentaires sur des commits et la revue de pull-requests, il nous suffit d'exécuter la commande suivante :

::

    curl -u 'FredBlain'  -H "Accept: application/json" -H "Content-type: application/json" -X PATCH \
    https://api.github.com/repos/haum/website/hooks/1234567 \
    -d '{"events":["push", "pull_request", "commit_comment", "pull_request_review_comment"]}'

Voyez, c'est pas très compliqué et pourtant c'est assez puissant ! Libre à vous maintenant de configurer votre hook pour IRC (ou tout autre service), en espérant que ce billet vous ait donné les clés suffisantes pour y parvenir.
Autrement, vous pouvez également jeter un oeil à l'`API`_ documentée de GitHub.

**NOTE:** Merci à `Pascal Chevrel`_ pour le pointeur vers l'article de `Rob Allen`_, dont ce billet s'inspire !


.. _HAUM: http://haum.org/
.. _dépôts Git: https://github.com/haum
.. _IRC: http://irc.lc/freenode/haum/
.. _Git.io: http://git.io
.. _API: https://developer.github.com/webhooks
.. _Pascal Chevrel: http://www.chevrel.org/
.. _Rob Allen: http://akrabat.com/computing/changing-the-github-irc-hooks-notification-events/
