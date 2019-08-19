<?php
require_once 'includes/config.php';

if (isset($_SESSION['username'])) {
	//log user out
	$user->logout();
	//on supprime le user de la base SQL connectes
	$stmt = $db->prepare('DELETE FROM connectes WHERE pseudo = :pseudo') ;
	$stmt->execute(array(
    		':pseudo' => $_SESSION['username']
	));
}

//on renvoie sur la page login
header('Location: login.php'); 

?>
