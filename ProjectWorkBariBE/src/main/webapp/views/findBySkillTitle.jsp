<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Skill Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/JobOfferCtr/findBySkillTitle" method="POST">
<h3>Insert title to find: </h3>
<input type="text" id="title" name="title" placeholder="Insert title"><br>
<input type="submit" value="Submit">
</form>
</body>
</html>