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
        <h3>Id Candidate:</h3>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}" placeholder="Id Candidate"> <br>
        <h3>Education Degree Type:</h3>
        <input class="dati" type="number" id="educationDegreeType.idEducationDegreeType" name="educationDegreeType.idEducationDegreeType" placeholder="Id EducationDegreeType"> <br>
        <h3>School Name:</h3>
        <input class="dati" type="text" id="schoolName" name="schoolName" placeholder="School Name"> <br>
        <h3>Place:</h3>
        <input class="dati" type="text" id="place" name="place" placeholder="Place"> <br>
         <h3>Date:</h3>
        <input class="dati" type="date" id="date" name="date" placeholder="Date"> <br>
         <h3>Final Grade:</h3>
        <input class="dati" type="number" id="finalGrade" name="finalGrade" placeholder="Final Grade"> <br>
        
        <input class="submit" type="submit" value="Submit">
</form>
</body>
</html>