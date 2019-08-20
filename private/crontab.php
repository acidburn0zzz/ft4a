<?php

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
