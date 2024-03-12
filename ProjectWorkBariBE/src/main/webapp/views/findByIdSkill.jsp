<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Id Skill</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/SkillCtr/findByIdSkill" method="GET">
<h3>Insert id skill to find: </h3>
<input type="number" id="idSkill" name="idSkill" placeholder="Insert id skill"><br>

<input type="submit" value="Submit">
</form>
</body>
</html>