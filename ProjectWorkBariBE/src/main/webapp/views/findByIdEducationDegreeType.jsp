<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Education Degree Type</title>
</head>
<body>

<h3> Insert a Degree Type Id:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/findByIdEducationDegreeType">
		
		<input class="number" type="number" id="idEducationDegreeType" name="idEducationDegreeType" placeholder="Insert Degree Type Id"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>