<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Candidate" %>
<%@ page import="com.model.CandidateSkill" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate Skills</title>
</head>
<body>

<h3> Skills for: ${Candidate.name} ${Candidate.surname}, Id Candidate: ${Candidate.idCandidate}</h3>

	<table>
			<tr>
				<th>Id Skill</th>
				<th>Skill</th>
				<th colspan="2">Operation</th>
			</tr>
			
		<c:forEach var="skill" items="${CandidateSkillList}"> 

			<tr>	
				<td> ${skill.idCandidateSkill} </td>
				<td> ${skill.skill.title} </td>
				 <td> <a href= "${pageContext.request.contextPath}/CandidateSkillCtr/prePutCandidateSkill?idCandidateSkill=${skill.idCandidateSkill}"><button class = "button"> UPDATE </button> </a></td>
    			 <td> <a href= "${pageContext.request.contextPath}/CandidateSkillCtr/deleteCandidateSkill?idCandidateSkill=${skill.idCandidateSkill}"><button class = "button"> DELETE </button> </a></td>
			</tr>		

		</c:forEach>

	</table>
	<a href= "${pageContext.request.contextPath}/CandidateSkillCtr/preAddCandidateSkill?idCandidate=${Candidate.idCandidate}"><button class = "button"> ADD NEW </button> </a>
	
	<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>
</body>
</html>