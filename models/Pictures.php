<?php 

class Pictures
{
	private $db = NULL;

	function __construct()
	{
		// connect to the database
		$this->db = new Database();
		$this->db->connect();
	}

	function getImagesByAuthor($author)
	{
		$images = $this->db->query("
			SELECT A.id, A.title, A.likes, A.dislikes, A.picture AS pic, B.username AS user
			FROM pictures A
			JOIN users B
			ON A.userid = B.id
			WHERE B.username LIKE '$author'
			ORDER BY (A.likes - A.dislikes)
			DESC");

		return $images;
	}
}
