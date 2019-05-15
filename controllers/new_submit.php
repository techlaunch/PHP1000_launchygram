<?php

// get params from post
$title = $_POST["title"];

// get user from the session
$userid = $_SESSION["id"];

// upload the image
$ext = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
$filename = md5(rand() . $title . date()) . ".$ext";
copy($_FILES["image"]["tmp_name"], "images/$filename");

// insert into the database
$db->query("
	INSERT INTO pictures (title, picture, userid) 
	VALUES ('$title', '$filename', '$userid')");

// redirect to list
header("Location: ?p=list");