<?php

// Ce fichier est destiné à tourner en tâche cron afin de "vider" la table xbt_announce_log toutes les heures (59 min !)
// crontab.php sert au fichier peers.php afin d'afficher les clients connectés, leurs configurations, etc.
// J'ai choisi de mettre ce fichier en dehors du path /web du site dans /private
// Mes différents rep sont donc :
// /var/www/ft4a.xyz/web, /var/www/ft4a.xyz/private, /var/www/ft4a.xyz/logs
//J'ai jouté sous root (en faisant crontab -e) :
// 0 */2 * * * php /var/www/ft4a.xyz/private/crontab.php

//Identifiants SQL
define('DBHOST','localhost');
define('DBUSER','xxxxxxxxx');
define('DBPASS','xxxxxxxxx');
define('DBNAME','xxxxxxxxx');

//Connexion SQL
$db = new PDO("mysql:host=".DBHOST.";port=8889;dbname=".DBNAME, DBUSER, DBPASS);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $db->query('DELETE FROM xbt_announce_log WHERE mtime < (NOW() - INTERVAL 59 MINUTE)');
?>
