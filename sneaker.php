<?php
    include("connect/connect.php");
    
    if (isset($_GET['ma'])) {
        $tam=$_GET['ma'];
    }else{
        $tam='';
    }
    $query= mysqli_query($connect,"Select name from category where id=".$tam);
  
?>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>TBN-Sneaker | Sneakers</title>
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
        <!--form-css-->
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
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
    </head>
    <body>
        <?php include("modules/header.php");?>
        <div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.php">Home</a></li>
                    <?php
                    if ($tam!=0) { ?>
                        <li><a href="sneaker.php?ma=0">SNEAKERS</a></li>
                        <?php $row = mysqli_fetch_array($query); ?>
                       <li class='active'>  <?php echo $row['name']?> </li>
                    <?php
                    }else{ ?>
                         <li class='active'>SNEAKERS </li>
                    <?php }
                       
                    ?>
                      
                </ol>
            </div>
        </div>
        <?php include("modules/sneaker/products.php");?>
        <?php include("modules/footer.php");?>
    </body>
</html>