<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Employee" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hi, Employee!</title>

<style>

body{
    margin: 5px 5px;
    margin-left: 15px;
    margin-right: auto;
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/e1/c8/7f/e1c87f161ebf164dbb6c3c9b0cdcce66.jpg);
	background-size: cover;
	background-repeat: no-repeat;
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
	 }
	
	
	 th {
          background-color: #594545;
          border-style: dashed;
          border-color: #305274;
          border-width: 2px;
          border-radius: 0px;
          color: white;
          font-family: Trebuchet MS, sans-serif;
          font-size: 15px;
          text-align: center;
          vertical-align: middle;
          border:1px solid #ddd;
          border-color: #594545;
          padding:4px 4px;
         } 


           td {
                color: #594545;
                background-color: #FFF8EA;
                font-family: Trebuchet MS, sans-serif;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                border:1.5px solid #ddd;
                border-color: #815B5B;     
                padding:4px;
               
                }  
            
   h3 {
	  font-family: Trebuchet MS, sans-serif;
      color: #594545;
	   }
   


   table {
          border-collapse:collapse;
          }


</style>

</head>
<body>
<br>
<br>
<br>

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
<br>
	
<table>
	<tr>
    	<th>Id Employee Type</th>
		<th>Description</th>
	</tr>
	<tr>			
    	<td> ${employee.employeeType.idEmployeeType} </td>
		<td> ${employee.employeeType.description} </td>
	</tr>

</table>

<br>
<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/EmployeeCtr/homePage"><button class="button">HOME</button></a>

</body>
</html>