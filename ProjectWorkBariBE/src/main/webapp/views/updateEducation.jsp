<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updating Education</title>
	
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
	
		h3, .text {
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
	  <h3>Update Education Informations:</h3>
	  <form method ="post" action="${pageContext.request.contextPath}/EducationCtr/updateEducation">
        <label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${Education.candidate.idCandidate}" placeholder="Id Candidate"> <br>
        <label class="text" for="educationDegreeType.idEducationDegreeType">Id Education Degree Type:</label><br>
        <input class="dati" type="number" id="educationDegreeType.idEducationDegreeType" name="educationDegreeType.idEducationDegreeType" value="${Education.educationDegreeType.idEducationDegreeType}" placeholder="Id Education Degree Type"> <br>
        <label class="text" for="schoolName">School Name:</label><br>
        <input class="dati" type="text" id="schoolName" name="schoolName" value="${Education.schoolName}" placeholder="School Name"> <br>
        <label class="text" for="place">Place:</label><br>
        <input class="dati" type="text" id="place" name="place" value="${Education.place}" placeholder="Place"> <br>
        <label class="text" for="date">Date:</label><br>
        <input class="dati" type="date" id="date" name="date" value="${Education.date}" placeholder="Date"> <br>
        <label class="text" for="finalGrade">Final Grade:</label><br>
        <input class="dati" type="number" id="finalGrade" name="finalGrade" value="${Education.finalGrade}" placeholder="Final Grade"> <br>
        
        <input class="submit" type="submit" value="Submit">
       </form>
</div>

<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button" >HOME</button></a> <br>
</body>
</html>