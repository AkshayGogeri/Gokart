<?php
	extract($_GET);
	$file=fopen("Items.txt","r");
	$ret=array();
	while($line=fgets($file)){
		$lin=trim($line);
		if(strncasecmp($lin,$movie,strlen($item))==0){
			$ret[]=$lin;
		}
	}
	echo json_encode($ret);
?>