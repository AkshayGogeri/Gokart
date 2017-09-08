<?php
	extract($_GET);
	$f=fopen("user1.txt","w+") or die("Unable to open file!");
	fwrite($f,$data);
	fclose($f);
?>

