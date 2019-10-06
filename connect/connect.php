<?php
	$connect= mysqli_connect('localhost','root','') or die ("Server not found!!!");
	mysqli_select_db($connect, 'db_sneaker') or die ("Database not found");
	mysqli_set_charset($connect,'utf8');
?>