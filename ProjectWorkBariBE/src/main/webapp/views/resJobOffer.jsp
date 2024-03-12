<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Candidate" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update or Delete</title>
</head>
<body>
	<table>
		<tr>
			<th>ID JOB OFFER</th>
			<th>DESCRIPTION JOB OFFER</th>
			<th>TITLE JOB OFFER</th>
			<th>START DATE</th>
			<th>END DATE</th>
			<th>ID COMPANY CLIENT</th>
			<th>MIN RAL</th>
			<th>MAX RAL</th>
			<th>ID CONTRACT TYPE</th>
		</tr>
	</table>


	<table>
		<tr>
			<th>ID JOB OFFER SKILL</th>
			<th>ID JOB OFFER</th>
			<th>ID SKILL</th>
		</tr>
<%
 List <Candidate> res = (Candidate) request.getAttribute("Skill");
%>
	</table>

	<table>
		<tr>

			<th>ID JOB INTERVIEW</th>
			<th>ID CANDIDATE</th>
			<th>DATE</th>
			<th>ID STATE JOB INTERVIEW</th>
			<th>OUTCOME</th>
			<th>NOTES</th>
			<th>ID EMPLOYEE</th>

		</tr>
	</table>

	<table>
		<tr>

			<th>ID STATE JOB INTERVIEW</th>
			<th>TITLE</th>
			<th>DESCRIPTION</th>
		</tr>
<%		List <Candidate> res = (Candidate) %>
	</table>

	
 
 
</body>
</html>