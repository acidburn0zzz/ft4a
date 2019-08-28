<?php
define('DBHOST','localhost');
define('DBUSER','xxxxxxxxxx');
define('DBPASS','xxxxxxxxxxxxxxxxxxxxxxxxx');
define('DBNAME','xxxxxxxxxxxx');

try {
        $db = new PDO("mysql:host=".DBHOST.";port=8889;dbname=".DBNAME, DBUSER, DBPASS);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
        //show error
        echo '<p>'.$e->getMessage().'</p>';
        exit;
}
?>
