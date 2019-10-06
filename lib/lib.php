<?php 
	function getProducts($connect = null,$offset = 0, $count = 6) {
		$sql = "SELECT product.id,product.name,product.price,product.qty,product.avatar,product.admin_id,product.created_at,product.updated_at,category.name as category_name  FROM product,category WHERE product.c_id = category.id ORDER BY product.id DESC LIMIT ".$offset.",".$count;
		$result = mysqli_query($connect,$sql);
		return $result;
	}

	function getProduct($connect,$product_id) {
		$sql = "SELECT product.id,product.name,product.price,product.qty,product.avatar,product.admin_id,product.created_at,product.updated_at,category.name as category_name FROM product,category WHERE product.c_id = category.id AND product.id = ".$product_id;
		$result = mysqli_query($connect,$sql);
		return $result;
	}

	function getListImages($connect,$product_id) {
		$sql = "SELECT * FROM product_img WHERE product_img.id = ".$product_id;
		$result = mysqli_query($connect,$sql);
		return $result;
	}
?>