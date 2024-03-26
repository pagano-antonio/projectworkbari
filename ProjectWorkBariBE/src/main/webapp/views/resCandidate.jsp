

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate" %>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Candidate found:</title>
	
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
		}
		
	 .container {
       width: 85%; 
       margin: 0 auto; 
       padding: 20px; 
       box-sizing: border-box; 
       }
		
		 
    table {
      border-collapse:collapse;
      width: 100%;
     
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
	            
 	  h3, h2 {
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


	<div class ="container">
	
	<c:choose>
	  <c:when test="${not empty CandidateList}">
   
   		<h3>Candidate found:</h3>  <br>
	


 <c:forEach var="Candidate" items="${CandidateList}">
  <table>

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
 
  <tr>
  
  	<td colspan="12">
  	<h3> About ${Candidate.surname} ${Candidate.name}:</h3>
	<a href="${pageContext.request.contextPath}/CandidateCtr/resCandidateSkill?idCandidate=${Candidate.idCandidate}"><button class="button">Skill</button></a>
	<a href="${pageContext.request.contextPath}/CandidateCtr/resWorkExperience?idCandidate=${Candidate.idCandidate}"><button class="button">Work Experience</button></a>
	<a href="${pageContext.request.contextPath}/CandidateCtr/resJobInterviews?idCandidate=${Candidate.idCandidate}"><button class="button">Job Interview</button></a>
	<a href="${pageContext.request.contextPath}/CandidateCtr/resEducation?idCandidate=${Candidate.idCandidate}"><button class="button">Education</button></a>
  	</td>
  </tr>
	</table>
	<br>
 </c:forEach> 
	
	
	
	</c:when>
	
	<c:otherwise>
		<h2>Result not found!</h2><br>
	</c:otherwise>
	</c:choose>	
		
	</div>	

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
</body>
</html>