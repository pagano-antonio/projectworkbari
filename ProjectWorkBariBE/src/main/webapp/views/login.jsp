<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>


<style>

	body{
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/e1/c8/7f/e1c87f161ebf164dbb6c3c9b0cdcce66.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	

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
    margin: 180px 15px;
    margin-left: 15px;
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
    

</style>


</head>
<body>
	<form method ="post"action="${pageContext.request.contextPath}/EmployeeCtr/findByLogin">
		<div>
		<h3>Insert username and password:</h3><br>
		<input type="text" id="username" name="username" placeholder="Insert Username"> <br> <br>
		<input type="password" id="password" name="password" placeholder="Insert Password"> <br> <br> 
		<input class= "button" type="submit" value="Sumbit"> 
		</div>
	</form>

</body>
</html>


