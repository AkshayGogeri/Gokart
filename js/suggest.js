
function init(){
	obj= new Suggest();
	obj.item=document.getElementById("search");
	obj.divcontainer=document.getElementById("container");
	head=document.getElementById("head");
	head.style.display="block";
	setTimeout(showcat,3000);
}
function showcat(){
	cat=document.getElementById("get_category");
	cat.style.display="block";
	setTimeout(showbrand,3000);
}
function showbrand(){
	brand=document.getElementById("get_brand");
	brand.style.display="block";
	setTimeout(showproducts,3000);
}
function showproducts(){
	pro=document.getElementById("get_product");
	pro.style.display="block";
	//setTimeout(showbrand,3000);
}
//Constructor function for the Suggest functionality
function Suggest(){
	this.timer=null;
	this.xhr=new XMLHttpRequest();
	//Function that decides WHEN we should go to the server,
	//This function will be called everytime the user types
	//a character.
	this.getItems=function(){
		if(this.timer){
			clearTimeout(this.timer);
		}
		this.timer=setTimeout(obj.fetchItems,1000);
	};
	this.fetchItems=function(){
		//alert("Going now");
		
		if(obj.item.value==""){
			
			obj.divcontainer.innerHTML="";
			obj.divcontainer.style.display="none";
			return;
		}else{
			if(localStorage[obj.item.value]){
				obj.showItems(JSON.parse(localStorage[obj.item.value]));
				
			}else{
				obj.xhr.onreadystatechange=obj.populateItems;
				obj.xhr.open("GET","getitems.php?item="+obj.item.value,true);
				obj.xhr.send();
				
			}
		}
	};
	this.populateItems=function(){
		
		if(this.readyState==4 && this.status==200){
			items=JSON.parse(this.responseText);
			//alert(items);
			if(items.length==0){
				obj.item.className="notfound";
				obj.divcontainer.innerHTML="";
				obj.divcontainer.style.display="none";
			}else{
				
				localStorage[obj.item.value]=this.responseText;
				obj.item.className="found";
				obj.showItems(items);
			}
		}
	};
	this.showItems=function(movList){
		obj.divcontainer.innerHTML="";
		
		for(i=0;i<movList.length;i++){
			newdiv=document.createElement("div");
			newdiv.innerHTML=movList[i];
			newdiv.className="suggest";
			newdiv.onclick=obj.setItem;
			obj.divcontainer.appendChild(newdiv);
		}
		obj.divcontainer.style.display="block";
	}
	this.setItem=function(event){
		obj.item.value=event.target.innerHTML;
		obj.divcontainer.innerHTML="";
		obj.divcontainer.style.display="none";
	}
	
	//Call to go
}