<?php
	$username = "";
	$email = "";
	$phone = "";
	$address = "";
	$errors = array();
	$db = mysqli_connect('localhost','root','','db_sneaker');
	if(isset($_POST['register'])) 
	{
		$username = (string)($_POST['username']);
		$email = (string)($_POST['email']);
		$pass_1 = (string)($_POST['pass_1']);
		$pass_2 = (string)($_POST['pass_2']);
		$address = (string)($_POST['address']);
		$phone = (string)($_POST['phone']);
		if($pass_1 != $pass_2)
		{
			array_push($errors, "The two password do not match");
		}
		if(count($errors)==0)
		{
			$password = md5($pass_1);
			$sql = "INSERT INTO user(username,email, password,address,phone)
						VALUES ('$username','$email','$password','$address','$phone')";
			mysqli_query($db,$sql);
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are now logged in";
			header('location: index.php');
		}
	}

	//log user in from login page
	if(isset($_POST['login'])){
		$email = (string)($_POST['email']);
		$password = (string)($_POST['password']);
		$password = md5($password);
		$query = "SELECT email, password FROM user WHERE email = '$email' AND password = $password";
		$result = mysqli_query($db, $query);
		if(mysqli_num_rows($result) == 1)
		{
			//login user
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are now logged in";
			header('location: index.php');
		}else{
			array_push($errors, "wrong email/password combination");
		}
	}

	//logout
	if(isset($_SESSION['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header('location: login.php');
	}
?>