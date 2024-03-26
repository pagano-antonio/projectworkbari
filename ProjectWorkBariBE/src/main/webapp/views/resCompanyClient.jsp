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
	background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	text-align: center;
    vertical-align:middle;
    display: block; 
	}
	
	 .container {
       width: 60%; 
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
	 
  h2 {
	  font-family: Trebuchet MS, sans-serif;
      color: #594545;
	   }


</style>

</head>
<body>
<br>
<br>
<br>
 <div class ="container">
 <c:choose>
    <c:when test="${not empty companyClientList}">


<table>

		<tr>
				<th>ID COMPANY CLIENT</th>
                <th>NAME</th>
                <th>ADDRESS</th>
                <th>CITY</th>
				<th colspan= "2">OPERATIONS</th>
				
		</tr>		

		
<c:forEach var="res"  items="${companyClientList}">
 
 <tr>
 <td>${res.idCompanyClient}</td> 
 <td>${res.name}</td>
 <td>${res.address}</td>
 <td>${res.city}</td>
		

<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/prePutCompanyClient?idCompanyClient=${res.idCompanyClient}"><button class="button">UPDATE</button></a></td>
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=${res.idCompanyClient}"><button class="button">DELETE</button></a></td>


</tr>
</c:forEach>

</table>

</c:when>
<c:otherwise>
<h2>Result not found!</h2><br>
</c:otherwise>
</c:choose>
 </div>
<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/CompanyClientCtr/homePage"><button class="button">HOME</button></a>

</body>	    	
</html>