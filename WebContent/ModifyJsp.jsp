<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<form name="modify" action="ModifyServlet">
<h1 align="center">Modify Order </h1>
<h2>Circuits Of the Current Customer</h2>
<h3>Select one circuit to modify</h3>
<br><br>
<!-- <table class="vztable" border="4">
<tr>
<th>Source Port</th>
<th>Destination Port</th>
<th>Order ID</th>
<th>BandWidth</th>
<th>Status Of Connection</th>
</tr>

<tr>
<td>Port12</td>
<td>Port24</td>
<td>c12dr56</td>
<td>256mbps</td>
<td>Inactive</td>
<td><a href="">Modify</a></td>
</tr> -->
<select name="circuit">
<c:forEach var="e" items="${circuits}">
<option value="${e.ORDER_ID}"><c:out value="${e.SOURCE_PORT}"></c:out>,<c:out value="${e.DESTINATION_PORT}"></c:out>,<c:out value="${e.ORDER_ID}"></c:out>,<c:out value="${e.BANDWIDTH_MBPS}"></c:out>,<c:out value="${e.STATUS}"></c:out>
</option>
</c:forEach>
</select>

<br><br>
<%-- <tr>
<td><c:out value="${e.SOURCE_PORT}"></c:out></td>
<td><c:out value="${e.DESTINATION_PORT}"></c:out></td>
<td><c:out value="${e.ORDER_ID}"></c:out></td>
<td><c:out value="${e.BANDWIDTH_MBPS}"></c:out></td>
<td><c:out value="${e.STATUS}"></c:out></td>
<td><a href="">Modify</a></td>
</tr> --%>
 
<!-- </table><br><br> -->
 <input type="submit" name="submit" value="submit" onclick="alertfunction()" class="vzbtn" align="middle"/> 
</form>
<script>
function alertfunction(){
	var c = confirm("Do you want to modify the order?");
	if(c==true){
		document.modify.submit();
	}
	else{
		document.write("You selected Cancel");
	}
		
	}
	</script>
</body>
</html>