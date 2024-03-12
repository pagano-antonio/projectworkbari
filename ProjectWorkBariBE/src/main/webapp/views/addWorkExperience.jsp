<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Work Experience</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/WorkExperienceCtr/addWorkExperience">
        <h3>Insert Work Experience:</h3>
        <input class="dati" type="number" id="candidate.idCandidate" name="candidate.idCandidate" placeholder="Add idCandidate"> <br>
        <input class="dati" type="text" id="title" name="title" placeholder="Add title"> <br>
        <input class="dati" type="text" id="description" name="description" placeholder="Add description"> <br>
        <input class="dati" type="date" id="startDate" name="startDate" placeholder="Add startDate"><br>
        <input class="dati" type="date" id="endDate" name="endDate" placeholder="Add endDate"><br>
        <input class="dati" type="text" id="company" name="company" placeholder="Add company"> <br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add city"> <br>
        <input class="submit" type="submit" value="Submit">
</form>

</body>
</html>