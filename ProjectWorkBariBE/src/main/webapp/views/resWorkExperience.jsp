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
</head>
<body>

<h3> Skills for: ${Candidate.name} ${Candidate.surname}, Id Candidate: ${Candidate.idCandidate}</h3>

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
	<a href= "${pageContext.request.contextPath}/WorkExperienceCtr/preAddWorkExperience?idCandidate=${Candidate.idCandidate}"><button class = "button"> ADD NEW </button> </a>
	
	<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>

</body>
</html>