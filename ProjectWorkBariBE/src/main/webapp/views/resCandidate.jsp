

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


 <c:forEach var="Candidate" items="${CandidateList}">
  
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
  
  <tr>
  <td>
  <h3> About ${Candidate.surname} ${Candidate.name}:</h3>
<a href="${pageContext.request.contextPath}/CandidateCtr/resCandidateSkill?idCandidate=${Candidate.idCandidate}"><button class="button">Skill</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resWorkExperience?idCandidate=${Candidate.idCandidate}"><button class="button">Work Experience</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resJobInterviews?idCandidate=${Candidate.idCandidate}"><button class="button">Job Interview</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resEducation?idCandidate=${Candidate.idCandidate}"><button class="button">Education</button></a>
	 </td>
	</tr>
 </c:forEach> 
	
	</table>
	

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>
</body>
</html>