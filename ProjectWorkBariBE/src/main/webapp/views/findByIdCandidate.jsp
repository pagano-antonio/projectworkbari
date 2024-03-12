<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By IdCandidate</title>
</head>
<body>

	<h3>Insert a valid Id:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CandidateCtr/findByIdCandidate">
		
		<input class="number" type="number" id="idCandidate" name="idCandidate" placeholder="Insert IdCandidate"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>
</body>
</html>