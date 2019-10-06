 <?php
    include("connect/connect.php");
    require("lib/lib.php");
    $trang = 0;
    if(isset($_GET['trang'])){
        $trang = (int)$_GET['trang'];
    }
    $products = getProducts($connect,0,$trang * 3 + 3);
    $trang += 1;
    // print_r($products);
    // exit();
?>       
        <div class="shop-grid">
            <div class="container">
                <?php while ($row = mysqli_fetch_array($products)) { ?>
                    <div class="col-md-4 grid-stn simpleCart_shelfItem">
                         <!-- normal -->
                            <div class="ih-item square effect3 bottom_to_top">
                                <div class="bottom-2-top">
                                    <div class="img"><img src="<?php echo $row['avatar']; ?>" alt="<?php $row['name']; ?>" class="img-responsive gri-wid"></div>
                                    <div class="info">
                                        <div class="pull-left styl-hdn">
                                            <h3><?php echo $row['name']; ?></h3>
                                        </div>
                                        <div class="pull-right styl-price">
                                            <p><a href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price"><?php echo $row['price']; ?>$</span></a></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        <!-- end normal -->
                        <div class="quick-view">
                            <a href="/tbn-sneaker/single.php?product_id=<?php echo $row['id']; ?>">Click for more</a>
                        </div>
                    </div>
                <?php } ?>
                    <div class="row">
                        <div class="col-md-2 col-md-offset-5" style="padding-top: 30px;">
                            <a href="/tbn-sneaker/sneaker.php?trang=<?php echo $trang; ?>" class="btn btn-default">Read More</a>
                        </div>
                    </div>
                <div class="clearfix"></div>
            </div>
        </div>