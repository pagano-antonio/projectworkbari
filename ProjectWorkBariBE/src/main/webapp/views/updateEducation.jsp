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
	  <h3>Update Education Informations:</h3>
	  <form method ="post" action="${pageContext.request.contextPath}/EducationCtr/updateEducation">
        <h3>Id Candidate:</h3>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${Education.candidate.idCandidate}" placeholder="Id Candidate"> <br>
        <h3>Education Degree Type:</h3>
        <input class="dati" type="number" id="educationDegreeType.idEducationDegreeType" name="educationDegreeType.idEducationDegreeType" value="${Education.educationDegreeType.idEducationDegreeType}" placeholder="Id Education Degree Type"> <br>
        <h3>School Name:</h3>
        <input class="dati" type="text" id="schoolName" name="schoolName" value="${Education.schoolName}" placeholder="School Name"> <br>
        <h3>Place:</h3>
        <input class="dati" type="text" id="place" name="place" value="${Education.place}" placeholder="Place"> <br>
         <h3>Date:</h3>
        <input class="dati" type="date" id="date" name="date" value="${Education.date}" placeholder="Date"> <br>
         <h3>Final Grade:</h3>
        <input class="dati" type="number" id="finalGrade" name="finalGrade" value="${Education.finalGrade}" placeholder="Final Grade"> <br>
        
        <input class="submit" type="submit" value="Submit">
       </form>
</div>

<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button" >HOME</button></a> <br>
</body>
</html>