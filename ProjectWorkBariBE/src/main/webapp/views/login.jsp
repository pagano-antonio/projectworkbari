<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<body>
	<form method ="post"action="${pageContext.request.contextPath}/EmployeeCtr/findByLogin">
		<h3>Insert username and password:</h3>
		<input type="text" id="username" name="username" placeholder="Insert Username"> <br>
		<input type="password" id="password" name="password" placeholder="Insert Password"> <br>
		<input type="submit" value="Sumbit">
	</form>

</body>
</html>