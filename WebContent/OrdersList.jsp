<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="styles.css" rel="stylesheet" type="text/css"/>
<title>Provision ready orders</title>
</head>

<body>
<form action="OrdersListServlet" name="provisionReadyOrders">
<table class="vztable">	
		
		<tr>
			<th>Provision Ready Orders</th>
		</tr> 
		
		<c:forEach var="order" items="${orderkey}">
		<tr> 
			<td>
				<input type="radio" name="orderRadio" value="${order.orderId}">${order.orderId}-${order.orderType}
			</td>                                                               
		</tr>
		</c:forEach>
		
		<tr>
			<td>	
				<input type="submit" name="orderSubmit" value="submit" class="vzbtn">
			</td>
		</tr>
 </table>
</form>
 </body>
</html>

<%-- <form action="OrdersListServlet" name="provisionReadyOrders">
<table>	 
<% int i=0; %>
<c:forEach var="order" items="${orderkey}">
	<tr> 
		<td>
			<input type="radio" name="orderRadio" value="1001">1001
			<a href="" id="orderType<%i++;%>>" style="text-decoration: none">add</a>
		</td>
	</tr>
</c:forEach>
	<tr>
		<td><input type="submit" name="orderSubmit" value="submit"></td>
	</tr>
 </table>
</form> --%>

<%-- <form action="OrdersListServlet" name="provisionReadyOrders">
<table>
<% int i=0; %>	 
<c:forEach var="order" items="${listkey}" >
   <tr> 
		<td>
			<input type="radio" name="orderRadio" value="1001">1001
			<a href="" id="${order}"<%i++;%> style="text-decoration: none">add</a>
		</td>
	</tr>
</c:forEach>
</table>
</form> --%>

