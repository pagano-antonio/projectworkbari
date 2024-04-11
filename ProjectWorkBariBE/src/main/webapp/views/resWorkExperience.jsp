<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Candidate" %>
    <%@ page import="com.model.WorkExperience" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Candidate Work Experience</title>
	
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
	  <c:when test="${not empty WorkExperienceList}">

<h3> Work Experiences for: ${Candidate.name} ${Candidate.surname}, Id Candidate: ${Candidate.idCandidate}</h3>

	<table>
			<tr>
				<th>Id Work Experience</th>
				<th>Title</th>
				<th>Description</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Company</th>
				<th>City</th>
				<th colspan="2">Operation</th>
			</tr>
			
		<c:forEach var="work" items="${WorkExperienceList}"> 

			<tr>	
				<td> ${work.idWorkExperience} </td>
				<td> ${work.title} </td>
				<td> ${work.description} </td>
				<td> ${work.startDate} </td>
				<td> ${work.endDate} </td>
				<td> ${work.company} </td>
				<td> ${work.city} </td>
				 <td> <a href= "${pageContext.request.contextPath}/WorkExperienceCtr/prePutWorkExperience?idWorkExperience=${work.idWorkExperience}"><button class = "button"> UPDATE </button> </a></td>
    			 <td> <a href= "${pageContext.request.contextPath}/WorkExperienceCtr/deleteWorkExperience?idWorkExperience=${work.idWorkExperience}"><button class = "button"> DELETE </button> </a></td>
			</tr>		

		</c:forEach>

	</table>
	<br>
	<a href= "${pageContext.request.contextPath}/WorkExperienceCtr/preAddWorkExperience?idCandidate=${Candidate.idCandidate}"><button class = "button"> ADD NEW </button> </a>
	
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