<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Candidate Skill</title>

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
<form method ="post" action="${pageContext.request.contextPath}/CandidateSkillCtr/addCandidateSkill">
        <h3>Insert Candidate Skill:</h3>
        <label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}"> <br>
        
        <label class="text" for="idCandidateSkill">Id Candidate Skill:</label><br>
         <select name="candidateSkills.idCandidateSkill" id="candidateSkills.idCandidateSkill">
        <c:forEach var="candidateSkills" items="${listCandidateSkill}">
            <option value="${candidateSkills.idCandidateSkill}" ${candidateSkills.idCandidateSkill == Candidate.candidateSkills.idCandidateSkill ? 'selected' : ''}>${candidateSkills.idCandidateSkill}</option>
        </c:forEach>
        </select><br>
       <!--  <input class="dati" type="number" id="idCandidateSkill" name="idCandidateSkill" placeholder="Id Candidate Skill"><br>-->
        <label class="text" for="skill.idSkill">Skill:</label><br>
        <!--  <input class="dati" type="number" id="skill.idSkill" name="skill.idSkill" placeholder="Add idSkill"> <br>-->
         <select name="skill.idSkill" id="skill.idSkill">
        <c:forEach var="skill" items="${listSkill}">
            <option value="${skill.idSkill}" ${skill.idSkill == Candidate.skill.idSkill ? 'selected' : ''}>${skill.title}</option>
        </c:forEach>
        </select><br>
        <br>
        <input class="button" type="submit" value="Submit">
    </form>
    
    <h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
 </div>
</body>
</html>