<?php

// catch params from the get
$id = $_GET["id"];
$action = $_GET["action"]; // likes or dislikes

// update likes or dislike
if(in_array($action, ['likes', 'dislikes'])) {
	$db->query("UPDATE pictures SET $action=$action+1 WHERE id=$id");
}

// redirect to login
header("Location: ?p=list");