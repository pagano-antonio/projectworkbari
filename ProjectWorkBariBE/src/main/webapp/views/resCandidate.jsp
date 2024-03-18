

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	
	      <th>ID</th>
	     <th>NAME</th>
	     <th>SURNAME</th>
	     <th>BIRTHDAY</th>
	     <th>BIRTH PLACE</th>
	     <th>ADDRESS</th>
	     <th>CITY</th>
	     <th>EMAIL</th>
	     <th>PHONE</th>
	     <th colspan= "2">OPERATION</th>
	
	   </tr>


  
  
	<tr>
	
	  <td>${Candidate.idCandidate}</td>  
      <td>${Candidate.name}</td>  
	  <td>${Candidate.surname}</td>  
      <td>${Candidate.birthday}</td>  
	  <td>${Candidate.birthPlace}</td>  
	  <td>${Candidate.address}</td>  
	  <td>${Candidate.city}</td>  
	  <td>${Candidate.email}</td>  
	  <td>${Candidate.phone}</td>  
 
	     
    <td> <a href= "${pageContext.request.contextPath}/CandidateCtr/prePutCandidate?idCandidate=${Candidate.idCandidate}"><button class = "button"> UPDATE </button> </a></td>
    <td> <a href= "${pageContext.request.contextPath}/CandidateCtr/deleteCandidate?idCandidate=${Candidate.idCandidate}"><button class = "button"> DELETE </button> </a></td>


  </tr>
  
	
	</table>
</body>
</html>