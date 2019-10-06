<?php
    include("connect/connect.php");
    include("modules/server.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TBN-Sneaker | Home</title>
        <link href="images/logo.png" rel="shortcut icon" type="image/x-icon" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<meta charset utf="8">
		<!--fonts-->
		<link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
		<!---social-->
        <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css'>
        <!--search.box-->
        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Antic'>
            <link rel="stylesheet" href="css/searchbox.css">
		<!--fonts-->
		<!--bootstrap-->
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!--coustom css-->
		<link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--shop-kart-js-->
        <script src="js/simpleCart.min.js"></script>
		<!--default-js-->
		<script src="js/jquery-2.1.4.min.js"></script>
		<!--bootstrap-js-->
		<script src="js/bootstrap.min.js"></script>
		<!--script-->
        <link rel="stylesheet" href="css/air-slider.min.css">
        <style>
            body{
                font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
                }
        </style>
</head>
    <body>
        <?php if(isset($_SESSION['success'])): ?>
            <div class ="error success">
                <h3>
                    <?php
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>
                </h3>
            </div>
        <?php endif ?>
        <?php if (isset($_SESSION["username"])): ?>
            <p> Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
            <p><a href="" style="color: red;">Logout</a></p>
        <?php endif ?>
        <?php include("modules/header.php");?>
        <?php include("modules/home/header-end.php");?>
        <?php include("modules/home/feel.php");?>
        <?php include("modules/shop-grid.php");?>
        <?php include("modules/home/sub-news.php");?>
        <?php include("modules/footer.php");?>
    </body>
</html>