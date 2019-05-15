<?php

$title = "Pictures";

$user = $_SESSION["user"];

// get the images
$images = $db->query("
	SELECT A.id, A.title, A.likes, A.dislikes, A.picture AS pic, B.username AS user
	FROM pictures A
	JOIN users B
	ON A.userid = B.id
	ORDER BY (A.likes - A.dislikes) DESC");

// include the view
include "views/list.tpl";