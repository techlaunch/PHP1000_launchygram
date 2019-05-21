<?php

// build models
$usersModel = new Users();
$picturesModel = new Pictures();

$title = "Pictures";

// get params from the session
$user = $_SESSION["user"];

// get view type
$view = isset($_GET["v"]) ? $_GET["v"] : "table"; // default if no exist
if( ! in_array($view, ["icon", "table"])) $view = "table"; // default if incorrect

// filter the component
$fuser = isset($_GET["u"]) ? $_GET["u"] : "%";

// load the list of users
$users = $usersModel->getUsers();

// get the images

$images = $picturesModel->getImagesByAuthor($fuser);

// include the view
include "views/$view.tpl";