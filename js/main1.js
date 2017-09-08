$(document).ready(function(){
	cat();
	brand();
	product();
		function cat(){
			$.ajax({
				url:	"action.php",
				method:"POST",
				data: {category:1},
				
				success: function(data){
					$("#get_category").html(data);
				},
				//timeout: 3000
				
			});setTimeout(cat,5000);
		}
		
		
		function brand(){
			$.ajax({
				url:	"action.php",
				method:"POST",
				data: {brand:1},
		
				success: function(data){
					$("#get_brand").html(data);
				},
				//timeout: 3000 				
			});setTimeout(brand,15000);
		}
		
		function product(){
			$.ajax({
				url:	"action.php",
				method:"POST",
				data: {getProduct:1},
				
				success: function(data){
					$("#get_product").html(data);
				},
				//timeout: 3000 				
			});	setTimeout(product,50000);
		}
		
$("body").delegate(".category","click",function(event){
	//event.preventDefault(); 
	 var cid=$(this).attr('cid');
	//alert(cid);
			$.ajax({
				url:	"action.php",
				method:"POST",
				data: {get_selected_Category:1,cat_id:cid},
				
				success: function(data){
					$("#get_product").html(data);
				},
				timeout: 3000 
			});
		
		
	
	})
	
	$("body").delegate(".selectBrand","click",function(event){
	//event.preventDefault(); 
	 var bid=$(this).attr('bid');
	//alert(cid);
		$.ajax({
				url:	"action.php",
				method:"POST",
				data: {selectBrand:1,brand_id:bid},
				
				success: function(data){
					$("#get_product").html(data);
				},
				timeout: 3000 
			});
		
		
	
	})
	
	//$("body").delegate(".selectBrand","click",function(event){
	//event.preventDefault(); 
	$("#search_btn").click(function(){
		
		var keyword=$('#search').val();
		if(keyword!="")
		{
			
	 //var bid=$(this).attr('bid');
	//alert(cid);
			$.ajax({
				url:	"action.php",
				method:"POST",
				data: {search:1,keyword:keyword},
				
				success: function(data){
					$("#get_product").html(data);
				},
				timeout: 3000 
			});
		
		}
	
	})
	
	$("#signup_button").click(function(event){
		event.preventDefault();
		$.ajax({
				url:	"register.php",
				method:"POST",
				data: $("form").serialize(),
				
				success: function(data){
				$("#signup_msg").html(data);
				}
				//timeout: 3000 
			});
	})
	
	$("#login").click(function(event){
		
	event.preventDefault();
	var email=$("#email").val();
	var pass=$("#password").val();
	$.ajax({
		
		url:"login.php",
		method:"POST",
		data:{userLogin:1,userEmail:email,userPassword:pass},
		success:function(data){
			//alert(data);
			if(data=="NSKK")
			{
				window.location.href="profile.php";
			}
		}
	})
	})
	$("body").delegate("#product","click",function (event){
		
		event.preventDefault();
		var p_id=$(this).attr('pid');
		
		$.ajax({
			url:"action.php",
			method:"POST",
			data:{addToProduct:1,proId:p_id},
			success: function(data)
			{
				$("#product_msg").html(data);
			
			}
			
		})
		
	})
	$("#cart_container").click(function(event){
		event.preventDefault();
		//alert(1);
		$.ajax({
			url:"action.php",
			method:"POST",
			data:{get_cart_product:1},
			success: function(data)
			{
				$("#cart_product").html(data);
			
			}
		})
	})
})