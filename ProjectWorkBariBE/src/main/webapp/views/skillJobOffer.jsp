<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Offer Skill</title>
</head>
<body>
	<table>
		<tr>
			<th>ID SKILL</th>
			<th>TITLE</th>
			<th>DESCRIPTION</th>

		</tr>
		<c:forEach var="skill" items="${skillJobOffer}">
			<tr>
				<td>${skill.skill.idSkill}</td>
				<td>${skill.skill.title}</td>
				<td>${skill.skill.description}</td>
				
				
				<td><a href="${pageContext.request.contextPath}/SkillCtr/prePutSkill?idSkill=${skill.skill.idSkill}"><button>Update</button></a></td>
				
				<td><a href="${pageContext.request.contextPath}/SkillCtr/deleteSkill?idSkill=${skill.skill.idSkill}"><button>Delete</button></a></td>
				
				<td><a href="${pageContext.request.contextPath}/SkillCtr/preAddSkil"><button>Add New Skill</button></a></td>
				<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td>
				<br>
			</tr>
		</c:forEach>
	</table>

</body>
</html>