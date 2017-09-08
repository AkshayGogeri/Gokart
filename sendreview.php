<?php
	include "db.php";
	extract($_GET);
	//header("Content-type:text/javascript");
	//echo "alert("inside php")";
	if($pro_title!="" && $usrrev!=""){
	$sql = "INSERT INTO reviews ".  
		  "(pro_title,pro_review) ". 
		  "VALUES ".   
		  "('$pro_title','$usrrev')";
	$retval = mysqli_query($con,$sql);
	if(!$retval)
		die("could not enter data".mysqli_error($con));
	}
	$sql="SELECT * from reviews WHERE pro_title='$pro_title'";
	$run_query=mysqli_query($con,$sql);
	$str="";
	echo "<script type='text/javascript'>";
	echo "revs=parent.document.getElementById('pro_rev');
		  ";
	while($row = mysqli_fetch_array($run_query)){

			$pro_review=$row['pro_review'];
			$pro_title=$row['pro_title'];
			if($pro_review!=""){
			$str=$str . "
			
			rev1=parent.document.createElement('div');
			rev1.innerHTML='$pro_review';
			revs.appendChild(rev1);
			hr=parent.document.createElement('hr');
			revs.appendChild(hr);
			revs.style.display='block';
			
			";
			}
		}
		echo $str;
		
		//echo "parent.updateDiv($str);";
		echo "</script>";
?>