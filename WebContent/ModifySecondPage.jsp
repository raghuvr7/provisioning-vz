<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Details</title>
<link rel="stylesheet" type="text/css" href="styles.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
		function getPorts(devices){
			
			/* alert("Fetching states"); */
			var xmlHttp;
			if(devices=="")
			{
				document.getElementById("res").innerHTML="";
				return;
			}
			if(window.XMLHttpRequest){
				xmlHttp=new XMLHttpRequest();
			/* 	alert("Created RequestObject"); */
			}
			else{
				
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4 && xmlHttp.status==200){
					/* alert("Changing Response"); */
					document.getElementById("res").innerHTML=xmlHttp.responseText;
				}
			}
			
			xmlHttp.open("GET", "GetPortsServlet?devices="+devices, true);
			/* alert("Opened RequestObject"); */
			xmlHttp.send();
			/* alert("Sent RequestObject"); */
				
		}

</script>

</head>
<body>
<form action="ModifyConnectionServlet">
${requestScope.addr}is your <b>New Location</b><br>


<b>Devices:</b>
<select name=devices onchange="getPorts(this.value)">
<c:forEach var="e" items="${requestScope.devices}">
<option>
${e}
</option>
</c:forEach>
</select><br>
<%-- <b>Ports:</b>
<select>
<c:forEach var="e" items="${requestScope.ports}">
<option>
${e}
</option>
</c:forEach>
</select> --%>
<%-- < <select >
<option value="Device1"><c:out value=""></c:out></option>
<option value="Device2">Device2</option>
</select> --%> 
<!--  <b>Port Number(Optional):</b>
 <input type="text" name="port">  -->
<div id="res">
		</div>
		<input class="vzbtn" type="submit" value="submit">
		</form>
</body>
</html>