<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Phone Number</title>
</head>
<body>

<h3> Insert a valid phone number:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CandidateCtr/findByPhone">
		
		<input class="number" type="number" id="phone" name="phone" placeholder="Insert Phone Number"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>