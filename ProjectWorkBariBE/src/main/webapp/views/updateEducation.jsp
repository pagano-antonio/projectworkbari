<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updating Education</title>
</head>
<body>

<div>
	  <h3>Update Education Informations:</h3>
	  <form method ="post" action="${pageContext.request.contextPath}/EducationCtr/updateEducation">
        <h3>Id Candidate:</h3>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${Education.candidate.idCandidate}" placeholder="Id Candidate"> <br>
        <h3>Education Degree Type:</h3>
        <input class="dati" type="number" id="educationDegreeType.idEducationDegreeType" name="educationDegreeType.idEducationDegreeType" value="${Education.educationDegreeType.idEducationDegreeType}" placeholder="Id Education Degree Type"> <br>
        <h3>School Name:</h3>
        <input class="dati" type="text" id="schoolName" name="schoolName" value="${Education.schoolName}" placeholder="School Name"> <br>
        <h3>Place:</h3>
        <input class="dati" type="text" id="place" name="place" value="${Education.place}" placeholder="Place"> <br>
         <h3>Date:</h3>
        <input class="dati" type="date" id="date" name="date" value="${Education.date}" placeholder="Date"> <br>
         <h3>Final Grade:</h3>
        <input class="dati" type="number" id="finalGrade" name="finalGrade" value="${Education.finalGrade}" placeholder="Final Grade"> <br>
        
        <input class="submit" type="submit" value="Submit">
       </form>
</div>

</body>
</html>