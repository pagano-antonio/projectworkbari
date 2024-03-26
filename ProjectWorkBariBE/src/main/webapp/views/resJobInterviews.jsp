<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Candidate" %>
<%@ page import="com.model.JobInterview" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Candidate Job Interviews</title>
</head>
<body>
	<h3> Skills for: ${Candidate.name} ${Candidate.surname}, Id Candidate: ${Candidate.idCandidate}</h3>
	
		<table>
			<tr>
				<th>Id Job Interview</th>
				<th>Date</th>
				<th>Id State Job Interview</th>
				<th>Outcome</th>
				<th>Notes</th>
				<th colspan="2">Operation</th>
			</tr>
				
			<c:forEach var="interviews" items="${JobInterviewsList}"> 
	
			<tr>	
				<td> ${interviews.idJobInterview} </td>
				<td> ${interviews.date} </td>
				<td> ${interviews.stateJobInterview.idStateJobInterview} </td>
				<td> ${interviews.outcome} </td>
				<td> ${interviews.notes} </td>	
				
				 <td> <a href= "${pageContext.request.contextPath}/JobInterviewCtr/preUpdateJobInterview?idJobInterview=${interviews.idJobInterview}"><button class = "button"> UPDATE </button> </a></td>
    			 <td> <a href= "${pageContext.request.contextPath}/JobInterviewCtr/deleteJobInterview?idJobInterview=${interviews.idJobInterview}"><button class = "button"> DELETE </button> </a></td>
			</tr>		
	
			</c:forEach>
	
		</table>
		<a href= "${pageContext.request.contextPath}/JobInterviewCtr/preAddJobInterview?idCandidate=${Candidate.idCandidate}"><button class = "button"> ADD NEW </button> </a>
		
		<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>

</body>
</html>