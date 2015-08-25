<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Provisioning orders and modifying inventory</title>
<link rel="stylesheet" type="text/css" href="styles.css">
  
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<form action="DecisionServlet" method="post">
<table class="vztable">
<tr><td>Provision Options</td></tr>
<tr><td><input type="radio" id="rb1" name="selectoption" value="modify">
<label for="rb1">Modify Inventory</label></td></tr>
<tr><td><input type="radio" id="rb2" name="selectoption" value="provision">
<label for="rb2">Provision an order</label></td></tr>


<tr><td><input type="submit" value="submit" class="vzbtn"/></td></tr>
</table>
</form>



</body>
</html>