<?php 

class Users
{
	private $db = NULL;

	function __construct()
	{
		// connect to the database
		$this->db = new Database();
		$this->db->connect();
	}

	// get the list of users
	function getUsers()
	{
		$res = $this->db->query("SELECT username FROM users");

		$users = [];
		foreach ($res as $r) $users[] = $r->username;

		return $users;
	}

	// check username and password
	function checkUserAndPass($user, $pass)
	{
		$pass = md5($pass);

		$res = $this->db->query("SELECT id, username FROM users WHERE username='$user' AND password='$pass'");

		return $res;
	}
}