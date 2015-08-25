<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="verizon.Adddata"%>
<%@page import="verizon.DAO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
		function getDevicesInZipcode(zipcode){
			var xmlHttp;
			
			if(window.XMLHttpRequest){
				xmlHttp=new XMLHttpRequest();
			}
			else{
				
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4 && xmlHttp.status==200){
					document.getElementById("res").innerHTML=xmlHttp.responseText;
				}
			}
			
			xmlHttp.open("GET", "DeviceServlet?zipcode="+zipcode, true);
			/* alert("Opened RequestObject"); */
			xmlHttp.send();
			
		}

</script>
</head>
<body>
<h1>Add Ports</h1>
	 <%
		List<Adddata> l = new DAO().distinctZipCode();
		pageContext.setAttribute("l", l);
	%> 
	Source:
	<select name="zipcode" onchange="getDevicesInZipcode(this.value)">
		<option value="">Select zipcode</option>
		<c:forEach var="ld" items="${l}">
			<option><c:out value="${ld.zipcode}" />
			</option>
		</c:forEach>
	</select>
	
	<div id="res">			
	</div>
</body>
</html>