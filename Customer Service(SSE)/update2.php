<?php
	extract($_GET);
	$f=fopen("user2.txt","w+") or die("Unable to open file!");
	fwrite($f,$data);
	fclose($f);
?>

