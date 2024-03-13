<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.model.Candidate" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate found:</title>
</head>


 <style>
</style>


<body>

	<table>
	
	<h3>Candidate found:</h3>  <br>
	  
       <tr>
	
	     <th>NAME</th>
	     <th>SURNAME</th>
	     <th>BIRTHDAY</th>
	     <th>BIRTH PLACE</th>
	     <th>ADDRESS</th>
	     <th>CITY</th>
	     <th>EMAIL</th>
	     <th>PHONE</th>
	
	   </tr>

	
   <c:forEach var="c"  items="${Candidate}" >  
  
	<tr>
	
      <td>${c.name}</td>  
	  <td>${c.surname}</td>  
      <td>${c.birthday}</td>  
	  <td>${c.birthPlace}</td>  
	  <td>${c.address}</td>  
	  <td>${c.city}</td>  
	  <td>${c.email}</td>  
	  <td>${c.phone}</td>  
	 
	     
    <td> <a href= "${pageContext.request.contextPath}/CandidateCtr/findByIdCandidate?idCandidate=${c.idCandidate}"><button class = "button"> UPDATE </button> </a></td>
    <td> <a href= "${pageContext.request.contextPath}/CandidateCtr/deleteCandidate?idCandidate=${c.idCandidate}"><button class = "button"> DELETE </button> </a></td>



  </tr>
  
  
	</c:forEach> 
	</table>
</body>
</html>