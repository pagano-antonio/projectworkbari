<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Company</title>
</head>
<body>

<h3> Insert Company to find:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CandidateCtr/findByCompany">
		
		<input class="text" type="text" id="workExperiences.company" name="workExperiences.company" placeholder="Insert Company"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>