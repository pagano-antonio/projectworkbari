<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Candidate Education</title>
</head>
<body>

<h3> Education for: ${Candidate.name} ${Candidate.surname}, Id Candidate: ${Candidate.idCandidate}</h3>
	
		<table>
			<tr>
				<th>Id Education</th>
				<th>Education Degree Type</th>
				<th>School Name</th>
				<th>Place</th>
				<th>Date</th>
				<th>Final Grade</th>
				<th colspan="2">Operation</th>
			</tr>
				
			<c:forEach var="education" items="${EducationList}"> 
	
			<tr>	
				<td> ${education.idEducation} </td>
				<td> ${education.educationDegreeType.description} </td>
				<td> ${education.schoolName} </td>
				<td> ${education.place} </td>
				<td> ${education.date} </td>
				<td> ${education.finalGrade} </td>
				
				 <td> <a href= "${pageContext.request.contextPath}/EducationCtr/preUpdateEducation?idEducation=${education.idEducation}"><button class = "button"> UPDATE </button> </a></td>
    			 <td> <a href= "${pageContext.request.contextPath}/EducationCtr/deleteEducation?idEducation=${education.idEducation}"><button class = "button"> DELETE </button> </a></td>
			</tr>		
	
			</c:forEach>
	
		</table>
		<a href= "${pageContext.request.contextPath}/EducationCtr/preAddEducation?idCandidate=${Candidate.idCandidate}"><button class = "button"> ADD NEW </button> </a>
		
		<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>

</body>
</html>