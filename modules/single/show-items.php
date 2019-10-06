<?php
    include("connect/connect.php");
    require("lib/lib.php");
    $product_id = 1;
    if(isset($_GET['product_id'])){
        $product_id = (int)$_GET['product_id'];
    }
    $product = getProduct($connect,$product_id);
    
    if (!$product) {
        printf("Error: %s\n", mysqli_error($connect));
        exit();
    }
    $product = mysqli_fetch_array($product);
    $product_images = getListImages($connect,$product_id);
    if (!$product_images) {
        printf("Error: %s\n", mysqli_error($connect));
        exit();
    }
    // print_r($product);
    // exit();
?>
<div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="sneaker.php">Sneakers</a></li>
                    <li class="active"><?php echo $product['name']; ?></li>
                </ol>
            </div>
        </div>
        <div class="showcase-grid">
            <div class="container">
                <div class="col-md-8 showcase">
                    <div class="flexslider">
                          <ul class="slides">
                            <?php while ( $row_images = mysqli_fetch_array($product_images)) { ?>
                            <li data-thumb="<?php echo $row_images['link'] ?>">
                                <div class="thumb-image"> <img src="<?php echo $row_images['link'] ?>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <?php } ?>
                          </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-4 showcase">
                    <div class="showcase-rt-top">
                        <div class="pull-left shoe-name">
                            <h3><?php echo $product['name']; ?></h3>
                            <p><?php echo $product['category_name'] ?></p>
                            <h4>&#36;<?php echo $product['price']; ?></h4>
                        </div>
                        <div class="pull-left rating-stars">
                            <ul>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#" class="active"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
    <li><a href="#"><span class="glyphicon glyphicon-star star-stn" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <hr class="featurette-divider">
                    <div class="shocase-rt-bot">
                        <div class="float-qty-chart">
                        <ul>
                            <li class="qty">
                                <h3>Size Chart</h3>
                                <select class="form-control siz-chrt">
                                  <option>6 US</option>
                                  <option>7 US</option>
                                  <option>8 US</option>
                                  <option>9 US</option>
                                  <option>10 US</option>
                                  <option>11 US</option>
                                </select>
                            </li>
                            <li class="qty">
                                <h4>QTY</h4>
                                <select class="form-control qnty-chrt">
                                  <option>1</option>
                                  <option>2</option>
                                  <option>3</option>
                                  <option>4</option>
                                  <option>5</option>
                                  <option>6</option>
                                  <option>7</option>
                                </select>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        </div>
                        <ul>
                            <li class="ad-2-crt simpleCart_shelfItem">
                                <a class="btn item_add" href="#" role="button">Add To Cart</a>
                                <a class="btn" href="#" role="button">Buy Now</a>
                            </li>
                        </ul>
                    </div>
                    <div class="showcase-last">
                        <h3>product details</h3>
                        <ul>
                            <li> Air Jordan 12 Dark Grey  has the tonal offering</li>
        <li>features a combination of dark gray suede, a leather mudguard, a light gray outsole, and metallic gold lace eyelets. </li>
                        </ul>
                    </div>
                </div>
        <div class="clearfix"></div>
            </div>
        </div>