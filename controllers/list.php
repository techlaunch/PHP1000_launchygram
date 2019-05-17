<?php

$title = "Pictures";

// get params from the session
$user = $_SESSION["user"];

// get view type
$view = isset($_GET["v"]) ? $_GET["v"] : "table"; // default if no exist
if( ! in_array($view, ["icon", "table"])) $view = "table"; // default if incorrect

// filter the component
$fuser = isset($_GET["u"]) ? $_GET["u"] : "%";

// load the list of users
$users = $db->query("SELECT username FROM users");

// get the images
$images = $db->query("
	SELECT A.id, A.title, A.likes, A.dislikes, A.picture AS pic, B.username AS user
	FROM pictures A
	JOIN users B
	ON A.userid = B.id
	WHERE B.username LIKE '$fuser'
	ORDER BY (A.likes - A.dislikes) DESC");

// include the view
include "views/$view.tpl";