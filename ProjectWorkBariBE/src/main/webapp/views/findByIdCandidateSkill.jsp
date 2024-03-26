<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Id Candidate Skill</title>
</head>
<body>
<h3>Insert a valid Id:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CandidateSkillCtr/findByIdCandidateSkill">
		
		<input class="number" type="number" id="idCandidateSkill" name="idCandidateSkill" placeholder="Insert Id Candidate Skill"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>