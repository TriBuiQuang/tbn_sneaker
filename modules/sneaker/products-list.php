<?php 
   include("connect/connect.php");
   if ($tam!=0) {
    
   $query= mysqli_query($connect,"select a.id,a.name, a.price,a.avatar from product a, category b where a.c_id = b.id and a.c_id =".$tam);
  
      }else{
           $query= mysqli_query($connect,"select a.id,a.name, a.price,a.avatar from product a, category b where a.c_id = b.id");
      }
      if (!$query) {
        printf("Error: %s\n", mysqli_error($connect));
        exit();
    }
   while($row = mysqli_fetch_array($query)) {?>
                <div class="col-md-4 grid-stn simpleCart_shelfItem">
                     <!-- normal -->
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                            <div class="img"><img src="<?php echo $row["avatar"]?>" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3><?php echo $row["name"]?></h3>
                                </div>
                                <div class="pull-right styl-price">
                                    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price"><?php echo $row["price"]?>$</span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="/tbn-sneaker/single.php?product_id=<?php echo $row['id']; ?>">Click for more</a>
                    </div>
                </div>
   
   <?php }
?>