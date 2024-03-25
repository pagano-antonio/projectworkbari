<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.model.Skill" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
		<tr>
			<th>ID SKILL</th>
			<th>TITLE</th>
			<th>DESCRIPTION</th>
			</tr>
	
 <% Skill s = (Skill)request.getAttribute("resSkill");%>
 
 <tr>
 <td><%= s.getIdSkill() %></td> 
 <td><%= s.getTitle() %></td>
 <td><%= s.getDescription() %></td>
 
<td><a href="${pageContext.request.contextPath}/SkillCtr/prePutSkill?idSkill=<%= s.getIdSkill() %>"><button>Update</button></a></td>
<td><a href="${pageContext.request.contextPath}/SkillCtr/deleteSkill?idSkill=<%= s.getIdSkill() %>"><button>Delete</button></a></td>
<td><a href="${pageContext.request.contextPath}/SkillCtr/preAddSkill"><button>Add New Skill</button></a></td>
<td><a href="${pageContext.request.contextPath}/SkillCtr/homePage"><button>HOME</button></a></td> <br>

</tr>
</table>

</body>
</html>