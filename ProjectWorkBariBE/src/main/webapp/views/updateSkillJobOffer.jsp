<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Skill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Skill Job Offer</title>
</head>
<body>
<% Skill s = (Skill)request.getAttribute("Skill");%>
<form action="${pageContext.request.contextPath}/SkillCtr/putSkill" method="POST">

<label for="idSkill">Id Skill:</label><br>
<input readonly id="idSkill" name="idSkill" value="<%= s.getIdSkill() %>"> <br>
<label for="title">Title:</label><br>
<input type="text" id="title" name="title" value="<%= s.getTitle() %>"> <br>
<label for="description">Description:</label><br>
<input type="text" id="description" name="description" value="<%= s.getDescription() %>"> <br>
<input type="submit" value="Update">

</form>
</body>
</html>