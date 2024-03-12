
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Find By Id Job Interview</title>
</head>
<body>
	<form method ="get" action="${pageContext.request.contextPath}/JobInterviewCtr/findByIdJobInterview">

<div>
	<h3>Insert id job interview to find:</h3>
	<input type="number" id="idJobInterview" name="idJobInterview" placeholder="Inserisci Id Job Interview"> <br>

	
	<input type="submit" value="Invia">
	
	</div>
	</form>
</body>
</html>