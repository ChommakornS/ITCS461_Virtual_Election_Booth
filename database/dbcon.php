<?php
	// echo get_include_path();  // Print current include path	
	require_once('C:\xampp\htdocs\vote\environnements\db.php');
	
	$conn = new mysqli(DB_URL, DB_USER, DB_PASSWORD, DB_NAME);
	
	if(!$conn){
		die("Error: Failed to connect to database");
		echo "Error occured when connecting to database";
	}
?>	