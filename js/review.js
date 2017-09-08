function showreview(){
	div=document.getElementById("prod");
	newdiv=document.createElement("div");
	newdiv.innerHTML="<h3>REVIEW HERE<h3>";
	div.appendChild(newdiv);
	newdiv=document.createElement("div");
	newdiv.innerHTML="<textarea rows=\"5\" cols=\"40\" id=\"txtrev\"></textarea><p><button id=\"btnrev\" style=\"float:right\" class=\"btn btn-danger\" onclick=\"sendreview()\">Send</button><br><div id=\"pro_rev\" style=\"border:solid 5px black;\"><iframe style=\"display:none;\"id=\"iframe\"></iframe></div>";
	div.appendChild(newdiv);
	sendreview();
	//alert(pro_title.innerText);
	/*ev = new EventSource("http://localhost/wtproject/sendreview.php");
	ev.addEventListener("myevent",updateDiv,false);
	ev.onerror = function() { alert("OOps..server closed");};*/
	div.style.display="block";
}

function sendreview(){
	usrrev=document.getElementById("txtrev");
	pro_title=document.getElementById("pro_title");
	ifr=document.getElementById("iframe");
	div=document.getElementById("pro_rev");
	while(div.hasChildNodes())
		div.removeChild(div.lastChild);
	div.appendChild(ifr);
	ifr.src="http://localhost/wtproject/sendreview.php?usrrev=" + usrrev.value+"& pro_title="+pro_title.innerText;	
}

function updateDiv(str)
{
	alert(str);
	div=document.getElementById("pro_rev");
	div.innerHTML="";
	div.innerHTML=str;
}