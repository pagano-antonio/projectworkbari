<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Skill</title>
</head>
<body>

<h3> Insert Skill Title:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/findBySkill">
		
		<input class="text" type="text" id="title" name="title" placeholder="Insert Skill"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>