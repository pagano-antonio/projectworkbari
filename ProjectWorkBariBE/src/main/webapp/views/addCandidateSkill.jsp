<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate Skill</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CandidateSkillCtr/addCandidateSkill">
        <h3>Insert Candidate Skill:</h3>
        <h3>Id Candidate:</h3>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}"> <br>
        <h3>Id Candidate Skill:</h3>
        <input class="dati" type="number" id="idCandidateSkill" name="idCandidateSkill" placeholder="Id Candidate Skill"><br>
        <h3>Id Skill:</h3>
        <input class="dati" type="number" id="skill.idSkill" name="skill.idSkill" placeholder="Add idSkill"> <br>
        

        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>