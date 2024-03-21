<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Surname</title>
</head>
<body>

<h3>Insert a valid Surname:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/findBySurname">
		
		<input class="text" type="text" id="surname" name="surname" placeholder="Insert Surname"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>