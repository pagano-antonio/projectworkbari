<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.CompanyClient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMPANY CLIENT RESULTS:</title>

<style>

body{
    margin: 5px 5px;
    margin-left: 15px;
    margin-right: auto;
	background-color: #FFF8EA;
	background-size: cover;
	background-repeat: no-repeat;
	 text-align: center;
        vertical-align:middle;
         display: block;
        margin-left: 300px;
        margin-right: 300px;
	 
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
				<th>ID COMPANY CLIENT</th>
                <th>NAME</th>
                <th>ADDRESS</th>
                <th>CITY</th>
				<th></th>
							
		</tr>		

	 <%CompanyClient c =(CompanyClient)request.getAttribute("CompanyClient");%>	

<form method ="POST"action="${pageContext.request.contextPath}/CompanyClientCtr/UpdateCompanyClient">

<tr>
 <td><input readonly id="idCompanyClient" name="idCompanyClient" value=<%out.print(c.getIdCompanyClient());%>></td>
 <td><input type="text" id="name" name="name" value=<%out.print(c.getName());%>></td>
 <td><input type="text" id="address" name="address" value=<%out.print(c.getAddress());%>></td>
 <td><input type="text" id="city" name="city" value=<%out.print(c.getCity());%>></td>
 <td><input type="submit" value="Aggiorna"></td>
</tr> 
</form>

</table>
  <h3> Return to HOME</h3>
	  <a href="${pageContext.request.contextPath}/CompanyClientCtr/homePage"><button>HOME</button></a> <br>


</body>	    	
</html>