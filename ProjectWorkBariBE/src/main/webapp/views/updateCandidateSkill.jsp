<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating Candidate Skill</title>
</head>
<body>

<div>
	<h3>Update skill informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateSkillCtr/putCandidateSkill">
		<h3>Id Candidate:</h3>
		<input class="" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${candidateSkill.candidate.idCandidate}" placeholder="Id candidate"> <br> 
		<h3>Id Candidate Skill:</h3>
		<input class="" type= "number" id="idCandidateSkill" name="idCandidateSkill" value="${candidateSkill.idCandidateSkill}" placeholder="Id Candidate Skill"> <br>
		<h3>Id Skill:</h3>
		<input class="" type= "number" id="idSkill" name="idSkill" value="${candidateSkill.skill.idSkill}" placeholder="Id Skill"> <br>
		
		<input class="submit" type="submit" value="Update">
	</form>
</div>

<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>

</body>
</html>