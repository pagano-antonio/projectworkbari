<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Employee" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating</title>
</head>
<body>



<div>
	<h3>Update your profile informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/EmployeeCtr/putEmployee">
		
		<input class="" readonly id="idEmployee" name="idEmployee" value="${employee.idEmployee}" placeholder="ID"> <br> 
		<input class="" type= "hidden" id="employeeType.idEmployeeType" name="employeeType.idEmployeeType" value="${employee.employeeType.idEmployeeType}" placeholder="ID"> <br>
		<input class="dati" type="text" id="name" name="name" value="${employee.name}" placeholder="Name"> <br>
		<input class="dati" type="text" id="surname" name="surname" value="${employee.surname}" placeholder="Surname"> <br>  
		<input class="dati" type="text" id="email" name="email" value="${employee.email}" placeholder="E-mail"><br>
		<input class="dati" type="text" id="username" name="username" value="${employee.username}" placeholder="Username"> <br>
		<input class="dati" type="text" id="password" name="password" value="${employee.password}" placeholder="Password"> <br>
		
		<input class="submit" type="submit" value="Update">
	</form>
</div>

<h3> Return to your profile</h3>
	<a href="${pageContext.request.contextPath}/views/resEmployee.jsp"><button>Go Back</button></a> <br>

</body>
</html>