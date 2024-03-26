<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Company Client</title>

<style>

body{
    margin: 5px 5px;
    margin-left: auto;
    margin-right: auto;
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	text-align: center;
    vertical-align:middle;
    display: block;
    margin-left: 300px;
    margin-right: 300px;
	 
	}
	
	h3 {
	  font-family: Trebuchet MS, sans-serif;
      color: #594545;
	   }
   	
.button {
	font-family: Trebuchet MS, sans-serif;
	background-color: #815B5B;
	border: none;
	color: white;
	padding: 5px 15px;
	border-radius: 10px;
    margin-bottom: 15px;
    margin-upper: 15px;
    margin-left: auto;
    margin-right: auto;
        
	 }
	
	
</style>	

</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CompanyClientCtr/addCompanyClient">
<br>
        <h3>Insert Company Client Data:</h3>
        
        <input class="dati" type="text" id="name" name="name" placeholder="Add Company Client name"> <br>
        <input class="dati" type="text" id="address" name="address" placeholder="Add Address"> <br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add City"><br>
       <br> <input class="button" type="submit" value="Submit">
    </form>
    <td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button class="button">HOME</button></a></td>
</body>
</html>