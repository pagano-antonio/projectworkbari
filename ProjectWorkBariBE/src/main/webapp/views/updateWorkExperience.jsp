<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updating Work Experience</title>
	
	<style>
		body{
	    margin: 5px 5px;
	    margin-left: auto;
	    margin-right: auto;
		background-color: #FFF8EA;
		background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
		background-size: cover;
		background-repeat: no-repeat;
		text-align: center;
	    vertical-align:middle;
	    display: block;
	    margin-left: 300px;
	    margin-right: 300px;	 
		}
	
		h3 {
		font-family: Trebuchet MS, sans-serif;
	    color: #594545;
	   	}
   	
	  	.button {
		font-family: Trebuchet MS, sans-serif;
		background-color: #815B5B;
		border: none;
		color: white;
		padding: 5px 15px;
		border-radius: 10px;
	    margin-bottom: 15px;
	    margin-upper: 15px;
	    margin-left: auto;
	    margin-right: auto;
	    }

	</style>
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
	<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
	
</body>
</html>