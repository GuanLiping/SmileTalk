



var xmlrequest;
function createXMLHttpRequest() {
  
	if (window.ActiveXObject) {
		xmlrequest = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		xmlrequest = new XMLHttpRequest();
	}
}

function setCoUnis(o) {
	createXMLHttpRequest();
	
	if (xmlrequest) {
			
		var req = "serShowCoUnis?coId=" + o.id;
			
		xmlrequest.open("get", req, true);
		xmlrequest.onreadystatechange=getCoUnis;
		xmlrequest.send(req);
	}
}

function getCoUnis() {
	
	if (xmlrequest.readyState == 4) {
		if (xmlrequest.status == 200) {
			
			
			var unis = xmlrequest.responseXML.getElementsByTagName("unis");
			var con2 = "<table width='100%'><tr>";
			for (var i = 1; i <= unis.length; i++) {
				con2 += "<td><li><a onclick='showMyUni(this)' href='javascript:void(0);' id='" + unis[i - 1].childNodes[0].childNodes[0].data + "' class='xh'>" + unis[i - 1].childNodes[1].childNodes[0].data + "</a></li></td>";
				if (i % 2 == 0) {
					con2 += "</tr><tr>";
				}
			}
			con2 += "</tr></table>";
			document.getElementById("uniTbl").innerHTML = con2;
		}
	}
}



function setProUnis(o) {
	
	createXMLHttpRequest();
	if (xmlrequest) {
		
		
		var req = "/SmileTalk/ChangeInfo?proid="+o.id;
	   	
		xmlrequest.open("get", req, true);	
		xmlrequest.onreadystatechange=getProUnis;	
		xmlrequest.send();
		
		
	}
	
}

function getProUnis() {	
	
	if (xmlrequest.readyState == 4) {
		//successful back	
		if (xmlrequest.status == 200) {
			//get unis and make a table
			
			 // get the root 
			// var xmlDOM = xmlrequest.responseXML;  			    
			 //var allUniversities = xmlDOM.documentElement;   
			
			 var unis = xmlrequest.responseXML.getElementsByTagName("unis");
			
			var con = "<table width='100%'><tr>";
			for (var i = 1; i <= unis.length; i++) {
				con += "<td><li><a onclick='showMyUni(this)' href='javascript:void(0);' id='" + unis[i - 1].childNodes[0].childNodes[0].data + "' class='xh'>" + unis[i - 1].childNodes[1].childNodes[0].data + "</a></li></td>";
				if (i % 2 == 0) {
					con += "</tr><tr>";
				}
			}
			con += "</tr></table>";
			
			document.getElementById("uniTbl").innerHTML = con;
		}
	}
}
function showMyUni(o) {
	
	//document.getElementById("university").value=o.innerHTML;
	$("#university").val(o.innerHTML);
	
	//document.getElementById("uniDiv").style.display="none";
	$("#uniDiv").css("display","none");
	//document.getElementById("uuniversity").value=o.id;
	$("#uuniversity").val(o.id);
}
function showUniTbl() {
	
	//document.getElementById("uniDiv").style.display = "";
	$('#uniDiv').show();
}
function closeUniTbl() {
	//document.all.uniDiv.style.display = "none";
	document.getElementById("uniDiv").style.display = "none";
}

