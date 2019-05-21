<?php

// build models
$usersModel = new Users();

$title = "Login";

// check if there is a possible login error
$error = isset($_GET["error"]);

// load the list of users
$users = $usersModel->getUsers();

// display the template 
include "views/login.tpl";