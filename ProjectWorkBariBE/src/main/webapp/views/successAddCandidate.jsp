<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Success</title>
	</head>
<body>
<table>
		<tr>
				<th>Id Candidate</th>
				<th>Name</th>
				<th>Surname</th>
				<th>Birthday</th>
				<th>Birthplace</th>
				<th>Address</th>
				<th>City</th>
				<th>E-mail</th>
				<th>Phone</th>
				<th colspan=2></th>
							
		</tr>		

	<tr>	
		<td> ${candidate.idCandidate} </td>
		<td> ${candidate.name} </td>
		<td> ${candidate.surname} </td>
		<td> ${candidate.birthday} </td>
		<td> ${candidate.birthPlace} </td>
		<td> ${candidate.address} </td>
		<td> ${candidate.city} </td>
		<td> ${candidate.email} </td>
		<td> ${candidate.phone} </td>
		<td>
    		<a href="${pageContext.request.contextPath}/CandidateCtr/prePutCandidate?idCandidate=${candidate.idCandidate}"><button class="button">Update</button></a>
    		<a href="${pageContext.request.contextPath}/CandidateCtr/deleteCandidate?idCandidate=${candidate.idCandidate}"><button class="button">Delete</button></a>
    	</td>
		
	 </tr>
</table>
<h3> About ${candidate.surname} ${candidate.name}:</h3>
<a href="${pageContext.request.contextPath}/CandidateCtr/resCandidateSkill?idCandidate=${candidate.idCandidate}"><button class="button">Skill</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resWorkExperience?idCandidate=${candidate.idCandidate}"><button class="button">Work Experience</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resJobInterviews?idCandidate=${candidate.idCandidate}"><button class="button">Job Interview</button></a>
<a href="${pageContext.request.contextPath}/CandidateCtr/resEducation?idCandidate=${candidate.idCandidate}"><button class="button">Education</button></a>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>
</body>
</html>