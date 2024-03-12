<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/EducationCtr/addEducation">
        <h3>Insert Education:</h3>
        <input class="dati" type="number" id="EducationDegreeType.idEducationDegreeType" name="EducationDegreeType.idEducationDegreeType" placeholder="Add idEducationDegreeType"> <br>
        <input class="dati" type="text" id="schoolName" name="schoolName" placeholder="Add School Name"> <br>
        <input class="dati" type="text" id="place" name="place" placeholder="Add place"> <br>
        <input class="dati" type="date" id="date" name="date" placeholder="Add Date"> <br>
        <input class="dati" type="number" id="finalGrade" name="finalGrade" placeholder="Add finalGrade"> <br>
        <input class="dati" type="number" id="Candidate.idCandidate" name="Candidate.idCandidate" placeholder="Add idCandidate"> <br>
        <input class="submit" type="submit" value="Submit">
</form>
</body>
</html>