<?php

session_start();
if(!isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ONLINE SHOPPING</title>
		<link rel="stylesheet" href="BS/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="suggest.css"/>
		<script type="text/javascript" src="suggest.js"></script> 
		<script src="jquery.js"></script>
		<script src="BS/js/bootstrap.min.js"></script>
		<script src="main1.js"></script>
	</head>
	<body onload="init()">
		
		
		<div class ="navbar navbar-inverse navbar-fixed-top" id="head" style="display:none">
			<div class ="container-fluid">
				<div class="navbar navbar-header">
					<a href="#" class="navbar-brand"> Gokart Shopping </a>
				</div>
				<ul class ="nav navbar-nav">
					<li><a href="#">Home </a></li>
					<li><a href="#">Products </a></li>
					<li><a href="http://localhost/wtproject/client1.html">Customer service </a></li>
				</ul>	
					<table border="0">
					<tr>
				
					<td>	 <input type ="text"  id="search" onkeyup="obj.getItems()"/> 
						</td>
					</tr>
					<tr>
		
					<td><div id="container"></div></td>
					</tr>
					</table>
					
					<!-- <li style="width:200px;left:11px;top:12px;"><input type ="text" class="form-cotrol" id="search" onkeyup="obj.getItems()"/></li> -->
					<li style="top:12px;left:35px;"><button class="btn btn-primary" id="search_btn"> Search</button></li>
			
				
				<ul class ="nav navbar-nav navbar-right">
					<li><a href="#" id="cart_container" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge ">	0 </span> </a>
						<div class="dropdown-menu" style="width:375px;">
							<div class="panel panel-primary">
								<div class="panel-heading ">
									<div class="row">
										<div class="col-md-3">Sl.No</div>
										<div class="col-md-3">Product Image</div>
										<div class="col-md-3">Product Name</div>
										<div class="col-md-3">Price in Rs.</div>
									</div>
								</div>
								<div class="panel-body">
									<div id="cart_product">
									<!-- <div class="row">
										<div class="col-md-3">Sl.No</div>
										<div class="col-md-3">Product Image</div>
										<div class="col-md-3">Product Name</div>
										<div class="col-md-3">Price in Rs.</div>
									</div> -->
									</div>
								</div>
								<div class="panel-footer "></div>
							
							</div>
						</div>
					</li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span><?php echo "HI,".$_SESSION["name"];  ?></a>
						<ul class="dropdown-menu">
							<li><a href="#" style="text-decoration:none; color:blue;"><span class="glyphicon glyphicon-shopping-cart"></li>							
							<li class="divider"></li>
							<li ><a href="" style="text-decoration:none; color:blue;">change password</a></li>
							<li class="divider"></li>							
							<li><a href="logout.php" style="text-decoration:none; color:blue;">log out</a></li>							
						</ul>
					</li>
	
					
				</ul>
				
			</div>
		</div>
		<p><br/></p>
		<p><br/></p>
		<p><br/></p>
		<div class="container-fluid">
			<div class="row">
				<div class ="col-md-1"></div>
				<div class ="col-md-2">
				<div id="get_category" style="display:none">
				</div>
				<!--
					<div class ="nav nav-pills nav-stacked">
						<li class="active"><a href ="#"><h3>Categories</h3></a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
					
					</div> -->
					<div id="get_brand" style="display:none">
					</div>
					<!--
					<div class ="nav nav-pills nav-stacked">
						<li class="active"><a href ="#"><h3>Brand</h3></a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
						<li><a href ="#">Categories</a></li>
					
					</div> -->
				</div>
				<div class ="col-md-8">
					<div class="row">
						<div class="col-md-12" id="product_msg" >
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-handing">Products</div>
						<div class ="panel-body">
							<div id="get_product" style="display:none">
							</div>
							<!--
							<div class="col-md-4">
								<div class="panel panel-info">
									<div class ="panel-heading">Iphone </div>
									<div class="panel-body">
										<img src="images/app.JPG"/>
									</div>
									<div class="panelheading">Rs.50000
									<button style:"float:right;" class="btn btn-danger"> Add to cart</button>
									</div>
								</div>
							</div>-->
						</div>
						<div class="panel-footer">&copy;2017</div>
					<div>
				</div>
				<div class ="col-md-1"></div>
			
				
	</body>

</html>