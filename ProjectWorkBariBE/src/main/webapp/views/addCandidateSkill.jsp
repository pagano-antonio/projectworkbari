<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate Skill</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CandidateSkill/addCandidateSkill">
        <h3>Insert Candidate Personal Skill:</h3>
        <input class="dati" type="number" id="candidate.idCandidate" name="Candidate.idCandidate" placeholder="Add idCandidate"> <br>
        <input class="dati" type="number" id="skill.idSkill" name="Skill.idSkill" placeholder="Add idSkill"> <br>

        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>