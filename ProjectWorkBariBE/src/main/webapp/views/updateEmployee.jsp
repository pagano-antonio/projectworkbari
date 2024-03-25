<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Employee" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating</title>


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



<div>
<br>
	<h3>Update your profile informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/EmployeeCtr/putEmployee">
		
		<input class="" readonly id="idEmployee" name="idEmployee" value="${employee.idEmployee}" placeholder="ID"> <br> 
		<input class="" type= "hidden" id="employeeType.idEmployeeType" name="employeeType.idEmployeeType" value="${employee.employeeType.idEmployeeType}" placeholder="ID"> <br>
		<input class="dati" type="text" id="name" name="name" value="${employee.name}" placeholder="Name"> <br>
		<input class="dati" type="text" id="surname" name="surname" value="${employee.surname}" placeholder="Surname"> <br>  
		<input class="dati" type="text" id="email" name="email" value="${employee.email}" placeholder="E-mail"><br>
		<input class="dati" type="text" id="username" name="username" value="${employee.username}" placeholder="Username"> <br>
		<input class="dati" type="text" id="password" name="password" value="${employee.password}" placeholder="Password"> <br>
		
		<br><input class="button" type="submit" value="Update">
	</form>
</div>

<h3> Return to your profile</h3>
	<a href="${pageContext.request.contextPath}/views/resEmployee.jsp"><button class="button">Go Back</button></a> <br>

</body>
</html>