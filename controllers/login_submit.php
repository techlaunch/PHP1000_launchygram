<?php

// build models
$usersModel = new Users();

// catch user/pass
$user = $_POST["user"];
$pass = $_POST["pass"];

// check against the database
$result = $usersModel->checkUserAndPass($user, $pass);

// user and password matches
if(count($result) > 0) {
	// start the session
	$_SESSION["id"] = $result[0]->id;
	$_SESSION["user"] = $result[0]->username;

	// redirect to the list
	header("Location: ?p=list");
// user or pass incorrect 
} else {
	// redirect with error
	header("Location: ?p=login&error=1");
}
