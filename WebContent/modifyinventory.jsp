<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles.css">
   <meta charset="utf-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  

<title>Inventory Modification</title>
<script>
function test(inp1,inp2,inp3,inp4,inp5,inp6,inp7){
// 	console.log("reached");
// 	console.log(inp1);
	alert(inp1+" "+inp2+" "+inp3+" "+inp4+" "+inp5+" "+inp6+" "+inp7);
	
var url="AddServlet?inp1="+inp1+"&"+"inp2="+inp2+"&"+"inp3="+inp3+"&"+"inp4="+inp4+"&"+"inp5="+inp5+"&"+"inp6="+inp6+"&"+"inp7="+inp7;  
    
    if(window.XMLHttpRequest){  
    request=new XMLHttpRequest();  
    }  
    else if(window.ActiveXObject){  
    request=new ActiveXObject("Microsoft.XMLHTTP");  
    }  
      
    try{  
      
    request.open("POST",url,true);  
    request.send();  
    }catch(e){alert("Unable to connect to server");}  
	
	
}
 

</script>
</head>
<body>
<div>
<table class="vztable" id="addinvent">
<!-- <tr>
<td>DEVICEID</td>
</tr>
<tr>
<td>PARTNUMBER</td>
</tr>
<tr>
<td>MANUFACTURER</td>
</tr>
<tr>
<td>ZIPCODE</td>
</tr>
<tr>
<td>PORTID</td>
</tr>
<tr>
<td>STATUS</td>
</tr>
<tr>
<td>BANDWIDTH(MBPS)</td>
</tr> -->
<tr align="center" >
<td colspan="2">Add a new Device</td>
</tr>
<tr>
<td>Deviceid</td><td><input type="text" name="n1" id ="n1" value="Enter device id"/></td></tr>
<tr>
<td>Part number</td><td><input type="text" name="n2" id ="n2" value="Enter part number" /></td></tr>
<tr>
<td>Manufacturer</td><td><input type="text" name="n3" id="n3" value="Enter the manufacturer"/></td></tr>
<tr>
<td>ZipCode</td><td><input type="text" name="n4" id="n4" value="Enter the zipcode "/></td></tr>

<tr><td>PortId</td><td><input type="text" name="n5" id="n5" value="Enter the portid"/></td></tr>
<tr>
<td>Status</td><td><select name="input6" id="n6">
  <option value="vacant" value="vacant">Vacant</option>
  <option value="reserved" value="reserved">Reserved</option>
  <option value="repair" value="repair">Repair</option>
  </select></td></tr>
<tr>
<td>BandWidth</td><td><input type="text" name="n7" id="n7" value="Enter the bandwidth"/></td></tr>
<tr>
<td>Device Type</td><td><input type="text" name="n8" id="n8" value="Enter the Device type"/></td></tr>


<tr>
<td><button class="vzbtn"  onclick="test(document.getElementById('n1').value,document.getElementById('n2').value,document.getElementById('n3').value,document.getElementById('n4').value,document.getElementById('n5').value,document.getElementById('n6').value,document.getElementById('n7').value),document.getElementByID('n8').value">+</button></td>
</tr>
</table>
</div>




</body>
</html>