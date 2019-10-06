<?php
    include("connect/connect.php");
    include("modules/server.php");
?>        
        <div class="header">
            <div class="container">
                <div class="header-top">
                    <!--login/signup-->
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
                        <p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
                    <?php endif ?>
                    <!--login/signup-->
                    <div class="logo">
                        <a href="index.php" =""><img src="images/logo2.png"></a>
                    </div>
                    <div class="login-bars">
                        <a class="btn btn-default log-bar" href="signup.php" role="button">Sign up</a>
                        <a class="btn btn-default log-bar" href="login.php" role="button">Login</a>
                        <div class="cart box_1">
                            <a href="checkout.php">
                            <h3>
                                <div class="total">
                                <span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div></h3>
                            </a>
                            <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>   
                            <div class="clearfix"> </div>
                        </div>	
                    </div>
                    <input class="button" placeholder="Search..." />
                    <script src='https://use.edgefonts.net/amaranth.js'></script>
        <div class="clearfix"></div>
                </div>
                <ul class="menu cf">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="">New Arrivals</a>
                    <li><a href="sneaker.php?ma=0">Sneakers</a>
                    <ul class="submenu">
                        <li><a href="sneaker.php?ma=2">Adidas</a></li>
                        <li><a href="sneaker.php?ma=1">Nike</a></li>
                        <li><a href="sneaker.php?ma=3">Puma</a></li>
                        <li><a href="sneaker.php?ma=4">Asics</a></li>
                        <li><a href="sneaker.php?ma=5">Vans</a></li>
                        <li><a href="sneaker.php?ma=6">New Balance</a></li>
                    </ul>           
                    </li>
                    <li><a href="">Clothings</a>
                    <ul class="submenu">
                        <li><a href="">Adidas</a></li>
                        <li><a href="">Nike</a></li>
                        <li><a href="">Fila</a></li>
                        <li><a href="">21 Forever</a></li>
                        <li><a href="">Design Freedom</a></li>
                     </ul>           
                    </li>
                    <li><a href="">Men's</a></li>
                    <li><a href="">Women's</a></li>
                    <li><a href="">Sale</a></li>
                    <li><a href="">Blog</a></li>
                    <li><a href="contact.php">Contact</a></li>
               </ul>
                    <!--header-bottom-->
            </div>
        </div>