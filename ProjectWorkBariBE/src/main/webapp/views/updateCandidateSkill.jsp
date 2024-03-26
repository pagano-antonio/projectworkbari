<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updating Candidate Skill</title>
	
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
	    margin-left: 300px;
	    margin-right: 300px;	 
		}
	
		h3, .text {
		font-family: Trebuchet MS, sans-serif;
	    color: #594545;
	   	}
   	
	  	.button {
		font-family: Trebuchet MS, sans-serif;
		background-color: #815B5B;
		border: none;
		color: white;
		padding: 5px 15px;
		border-radius: 10px;
	    margin-bottom: 15px;
	    margin-upper: 15px;
	    margin-left: auto;
	    margin-right: auto;
	    }

	</style>
</head>
<body>

<div>
	<h3>Update skill informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateSkillCtr/putCandidateSkill">
		<label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
		<input class="" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${candidateSkill.candidate.idCandidate}" placeholder="Id candidate"> <br> 
		<label class="text" for="idCandidateSkill">Id Candidate Skill:</label><br>
		<input class="" type= "number" id="idCandidateSkill" name="idCandidateSkill" value="${candidateSkill.idCandidateSkill}" placeholder="Id Candidate Skill"> <br>
		<label class="text" for="idSkill">Id Skill:</label><br>
		<input class="" type= "number" id="idSkill" name="idSkill" value="${candidateSkill.skill.idSkill}" placeholder="Id Skill"> <br>
		
		<input class="button" type="submit" value="Update">
	</form>
</div>

<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button" >HOME</button></a> <br>

</body>
</html>