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
	    margin: 15px;
		background-color: #FFF8EA;
		background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
		background-size: cover;
		background-repeat: no-repeat;
		text-align: center;
	    vertical-align:middle;
	    display: block; 
		}
		
	 .container {
       width: 70%; 
       margin: 0 auto; 
       padding: 20px; 
       box-sizing: border-box; 
       }
		
		 
    table {
      border-collapse:collapse;
      width: 100%;
      height: 100%;
      }
		
		
	 th {
      text-align: center;
      font-family: Trebuchet MS, sans-serif;
      background-color: #594545;
      border-width: 2px;
      border-radius: 0px;
      color: white;
      font-size: 15px;
      margin: 0px 0px;
      margin-bottom: 10px;
      border:2 px solid #ddd;
      border-color: #3d2f2d;
      border-style: outset;
      } 
	
	
      td {
      color: #594545;
      background-color: white;
      font-family: Trebuchet MS, sans-serif;
      font-size: 16px;
      text-align: center;
      vertical-align: middle;
      height: 30px;
      border:1.5px solid #ddd;
      border-color: #815B5B;     
      padding:4px;
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
	  border-radius: 10px;
	  display: inline-block;
      padding: 5px 15px;
      margin-left: auto;
      margin-right: auto;
      }
	
	</style>

</head>
<body>
<br>
<br>
<br>

<div class ="container">
<table>

		<tr>
				<th>ID EMPLOYEE</th>
				<th>NAME</th>
				<th>SURNAME</th>
				<th>E-MAIL</th>
				<th>USERNAME</th>
				<th colspan="2">OPERATION</th>
							
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
    	<th>ID EMPLOYEE TYPE</th>
		<th>DESCRIPTION</th>
	</tr>
	<tr>			
    	<td> ${employee.employeeType.idEmployeeType} </td>
		<td> ${employee.employeeType.description} </td>
	</tr>

</table>
</div>


<br>
<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/EmployeeCtr/homePage"><button class="button">HOME</button></a>

</body>
</html>