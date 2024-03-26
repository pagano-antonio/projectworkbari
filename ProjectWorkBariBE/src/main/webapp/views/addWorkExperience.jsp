<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Work Experience</title>
	
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
	<form method ="post" action="${pageContext.request.contextPath}/WorkExperienceCtr/addWorkExperience">
        <h3>Insert New Work Experience:</h3>
        <label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}"> <br>
        <label class="text" for="title">Title:</label><br>
        <input class="dati" type="text" id="title" name="title" placeholder="Add title"> <br>
        <label class="text" for="description">Description:</label><br>
        <input class="dati" type="text" id="description" name="description" placeholder="Add description"> <br>
        <label class="text" for="startDate">Start Date:</label><br>
        <input class="dati" type="date" id="startDate" name="startDate" placeholder="Add startDate"><br>
        <label class="text" for="endDate">End Date:</label><br>
        <input class="dati" type="date" id="endDate" name="endDate" placeholder="Add endDate"><br>
        <label class="text" for="company">Company:</label><br>
        <input class="dati" type="text" id="company" name="company" placeholder="Add company"> <br>
        <label class="text" for="city">City:</label><br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add city"> <br>
        
        <input class="button" type="submit" value="Submit">
	</form>
	
	<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
</div>

</body>
</html>