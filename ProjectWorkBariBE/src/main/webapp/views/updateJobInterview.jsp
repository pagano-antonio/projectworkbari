<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Updating Job Interview</title>
	
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
	<h3>Update Job Informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterview">
		<h3>Id Job Interview:</h3>
		<label class="text" for="idJobInterview">Id Job Interview:</label><br>
		<input class="" readonly type="number" id="idJobInterview" name="idJobInterview" value="${Interview.idJobInterview}" placeholder="Id Job Interview"> <br> 
		<label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
		<input class="" readonly type= "number" id="candidate.idCandidate" name="candidate.idCandidate" value="${Interview.candidate.idCandidate}" placeholder="Id Candidate Skill"> <br>
		<label class="text" for="date">Date:</label><br>
		<input class="" type= "date" id="date" name="date" value="${Interview.date}" placeholder="Date"> <br>
		<label class="text" for="stateJobInterview.idStateJobInterview">Id State Job Interview:</label><br>
		<input class="" type= "number" id="stateJobInterview.idStateJobInterview" name="stateJobInterview.idStateJobInterview" value="${Interview.stateJobInterview.idStateJobInterview}" placeholder="Id State Job Interview"> <br>
		<label class="text" for="outcome">Outcome:</label><br>
		<input class="" type= "number" id="outcome" name="outcome" value="${Interview.outcome}" placeholder="Outcome"> <br>
		<label class="text" for="notes">Notes:</label><br>
		<input class="" type= "text" id="notes" name="notes" value="${Interview.notes}" placeholder="Notes"> <br>
		<label class="text" for="employee.idEmployee">Id Employee:</label><br>
		<input class="" type= "number" id="employee.idEmployee" name="employee.idEmployee" value="${Interview.employee.idEmployee}" placeholder="Id Employee"> <br>
		
		<input class="button" type="submit" value="Update">
	</form>
</div>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>

</body>
</html>