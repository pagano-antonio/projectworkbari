<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Employee" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hi, Employee!</title>
</head>
<body>

<table>
		<tr>
				<th>Id Employee</th>
				<th>Name</th>
				<th>Surname</th>
				<th>E-mail</th>
				<th>Username</th>
				<th></th>
							
		</tr>		

	<tr>	
		<td> ${employee.idEmployee} </td>
		<td> ${employee.name} </td>
		<td> ${employee.surname} </td>
		<td> ${employee.email} </td>
		<td> ${employee.username} </td>
	    	
    	<td>
    		<a href="${pageContext.request.contextPath}/EmployeeCtr/preUpdateEmployee?username=${username}"><button class="button">Update Your Profile</button></a>
    	</td>
		
	 </tr>
</table>
	
<table>
	<tr>
    	<th>Id Employee Type</th>
		<th>Description</th>
				
    	<td> ${employee.employeeType.idEmployeeType} </td>
		<td> ${employee.employeeType.description} </td>
	</tr>

</table>


<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/EmployeeCtr/home"><button>HOME</button></a> <br>

</body>
</html>