<?php 
	header('Content-Type:text/event-stream');
	header('Cache-Control: no-cache');
	ob_start();
	$mod=filemtime("user1.txt");
	//session_write_close();
	while(true)
	{	
		header('Content-Type:text/event-stream');
		header('Cache-Control: no-cache');
		if(filemtime("user1.txt")> $mod )	//Check if file has been updated
		{
			$f=file("user1.txt");
			$d=$f[sizeof($f)-1];
			echo "event:Data\n";
			echo "retry:100\n";
			echo "data:{$d}\n\n";
			
			ob_end_flush();
			flush();
			$mod=filemtime("user1.txt");
			sleep(1);
		}
		clearstatcache();
	}
?>
