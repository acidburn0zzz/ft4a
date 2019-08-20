# ft4a
Php/MySQL frontend to XBT Tracker
ft4a.xyz est un projet visant :
- à créer et maintenir un front-end simple et pratique au tracker bittorrent XBTT (php + mysql)
- à créer et animer une communauté de partageurs et d'utilisateurs de médias sous licence libre ou licence de libre diffusion
Il s’inspire du projet freetorrent.fr, abandonné en juillet 2019.

ft4a signifie : Free Torrents For All

### Architecture du site
Le site tourne actuellement sur un server Ubuntu 18.04.
Le site possède l'architecture suivante :
   /web : fichiers php et html
   /private : crontab.php (délestage de la table xbt_announce_log
   /logs : access.log et error.log

### PHPMailer
L'envoi de mails (signup.php, contact.php et recup_pass.php) se fait grâce à PHPMailer (https://github.com/PHPMailer/PHPMailer) installé avec Composer

### SQL
La base MySQL comprend le stables pour le site ET pour XBT tracker.

### XBT Tracker
XBT ne semble plus disponible depuis le site traditionnel d'Olaf Van der Spek (http://xbtt.sourceforge.net/tracker/).
Vous pouvez trouver le code ici : https://github.com/citizenz7/xbt. L'installation est détaillée dans le Readme.
XBT est le tracker bittorrent. C'est lui qui "gère" toutes les connexions.
Vous pouvez vérifier les stats du tracker en vous rendant sur http://VOTRE_SITE.com:xbt_port/stats (exemple : http://ft4a.xyz:55555/stats).
Le debug est ici : http://VOTRE_SITE.com:xbt_port/debug

XBT doit donc être "lancé" avec systemd ou directement dans un "screen" pour que le site "fonctionne".
Exemple avec systemd (USER est à remplacer. Le chemin pour xbt_tracker est à adapter si besoin...) :
`[Unit]
Description=XBT Tracker
After=network.target mysql.service
#Wants=mysql.service

[Service]
User=USER
Type=forking
KillMode=none
ExecStart=/home/USER/xbt/Tracker/xbt_tracker --conf_file /home/USER/xbt/Tracker/xbt_tracker.conf
ExecStop=/usr/bin/killall -w -s 2 /home/mumbly/xbt/Tracker/xbt_tracker
WorkingDirectory=/home/USER/xbt/Tracker

[Install]
WantedBy=default.target`

### Partie Administration
Le 1er membre inscrit (ID #1) est l'admin du site qui à accès à tous les outils d'administration :
- la partie admin du site : http://VOTRE_SITE.com/admin
- l'édition, suppression de membres et de torrents directement sur les pages du site 

### Membres
Les membres (inscrits) peuvent télécharger et uploader des torrents.
Ils ont accès un espace personnel d'administration de leur profil (changement du mot de passe, e-mail, ajout/suppression d'un avatar personnalisé, ...)

### Messagerie interne
Une messagerie interne permet aux membres de communiquer entre eux.
