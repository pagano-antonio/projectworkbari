<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By City</title>
</head>
<body>

<h3>Insert a valid City:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CandidateCtr/findByCity">
		
		<input class="text" type="text" id="city" name="city" placeholder="Insert City"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>


</body>
</html>