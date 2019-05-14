<?php

$title = "Login";

$users = $db->query("SELECT username FROM users");

include "views/login.tpl";


