<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating Work Experience</title>
</head>
<body>
<div>
	<h3>Update Work Experience:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/WorkExperienceCtr/updateWorkExperience">
		
		<input class="" readonly id="idWorkExperience" name="idWorkExperience" value="${WorkExperience.idWorkExperience}"> <br> 
		<input class="" readonly id="idCandidate" name="idCandidate" value="${WorkExperience.candidate.idCandidate}" placeholder="Id Candidate"> <br>
		<input class="" type= "text" id="title" name="title" value="${WorkExperience.title}" placeholder="Title"> <br>
		<input class="" type= "text" id="description" name="description" value="${WorkExperience.description}" placeholder="Description"> <br>
		<input class="" type= "date" id="startDate" name="startDate" value="${WorkExperience.startDate}" placeholder="Start Date"> <br>
		<input class="" type= "date" id="endDate" name="endDate" value="${WorkExperience.endDate}" placeholder="End Date"> <br>
		<input class="" type= "text" id="company" name="company" value="${WorkExperience.company}" placeholder="Company"> <br>
		<input class="" type= "text" id="city" name="city" value="${WorkExperience.city}" placeholder="City"> <br>
		
		
		
		
		<input class="submit" type="submit" value="Update">
	</form>
</div>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>
	
</body>
</html>