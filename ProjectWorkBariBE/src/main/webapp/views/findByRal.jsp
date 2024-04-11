<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Ral</title>
<style>

	body{
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/e1/c8/7f/e1c87f161ebf164dbb6c3c9b0cdcce66.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	 margin-left: 20px;
	}

	h3 {
	text-align: center;
	font-family: Trebuchet MS, sans-serif;
	background-color: #594545;
	border-width: 2px;
    border-radius: 0px;
	color: white;
	margin: 0px 0px;
	margin-bottom: 10px;
	border:2 px solid #ddd;
    border-color: #3d2f2d;
    border-style: outset;
	}

div{
	position: relative;
	display: inline-block;
	width: 25%;
	border-width: 2px;
	text-align:center;
    border:2px solid #ddd;
    background-color: #FFF8EA;
    border-color: #594545;
    margin: 180px 1px;
    margin-right: auto;
    }
    
.button{
	font-family: Trebuchet MS, sans-serif;
	background-color: #815B5B;
	border: none;
	color: white;
	padding: 5px 15px;
	border-radius: 10px;
    margin-bottom: 15px;
	 }
	 
   h4 {
      font-family: Trebuchet MS, sans-serif;
      color: white; 
      }
    
</style>
</head>
<body>

	<div>
	<form action="${pageContext.request.contextPath}/JobOfferCtr/findByMinRalAfterAndMaxRalBefore" method="GET">
	<h3>Insert min ral and max ral: </h3>
	<input type="number" id="minRal" name="minRal" placeholder="Insert min ral"><br> <br>
	<input type="number" id="maxRal" name="maxRal" placeholder="Insert max ral"><br> <br>
	<input class="button" type="submit" value="SEARCH"> <br>
	
	</form>
	</div>
	

<br>
<h4> Return to HOME</h4>
	<a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button class="button">HOME</button></a>
<br>
</body>
</html>