<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="DAO.Order"%>
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

		
		function checkPort()
		
		{
			var dev= document.getElementById("device");
			
					
					<%
					List<Integer> port = new DAOOrderToBillOracle().getVacantPortIdsInDevice(dev);
					Collections.sort(port) ;
					int p= port.get(0);
					pageContext.setAttribute("port",p);
					request.setAttribute("port",p);
				%> 
					
		}
		
		
		function checkDPort()
		{
			var ddev= document.getElementById("ddevice");
			
			
			<%
			List<Integer> dport = new DAOOrderToBillOracle().getVacantPortIdsInDevice(ddev);
			Collections.sort(dport) ;
			int dp= dport.get(0);
			pageContext.setAttribute("dport",dp);
			request.setAttribute("dport",dp);
		%> 
			
		}
		
</script>
</head>
<body>
<h1 class="vzh1">Add Ports</h1>
	 <%
		List<Adddata> l = new DAOOrderToBillOracle().getAllZipcodes();
		pageContext.setAttribute("l", l);
	%> 
	<form name="adddata" action="AddComplete">
	<div class="vzred">
	Source:
	<select name="zipcode" onchange="getDevicesInZipcode(this.value)">
		<option value="">Select zipcode</option>
		<c:forEach var="ld" items="${l}">
			<option><c:out value="${ld.zipcode}" />
			</option>
		</c:forEach>
	</select>
	</div>
	<div id="res"  class="vzred">			
	</div>
	<div class="vzred">
	Port: <c:out value="${port}" />
	</div> 
	<div>
	<%
	DAOOrderToBillOracle dest=new DAOOrderToBillOracle();
		Order order = dest.getOrderDetails(request.getAttribute("orderKey"));
		int dzip= dest.getZipcode(order.getServiceAddressId);
		pageContext.setAttribute("dzip", dzip);
		List<String> ddevice= dest.getDeviceIdsInZipcode(dzip);
		pageContext.setAttribute("ddevice", ddevice);
		request.getAttribute("ddevice",ddevice);
		request.setAttribute("order",order);
	%> 
	
	Zipcode: <c:out value="${dzip}" />
	</div>
	<div>
	<select name="ddevice" onchange="checkDPort()">
		<option value="">Select device</option>
		<c:forEach var="ld" items="${ddevice}">
			<option><c:out value="${ld}" />
			</option>
		</c:forEach>
	</select>
	</div>
	
	<div class="vzred">
	Port: <c:out value="${dport}" />
	</div> 
	
	
	
	<input class="vzbtn" type="submit" value="Submit" /><input class="vzbtn2" type="reset" value="Cancel"/>
	</div>
	
	
	</form>
</body>
</html>