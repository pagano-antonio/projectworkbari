<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Job Interview</title>
	
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
		<h3>Insert Job Interview Informations:</h3>
		<form method ="post" action="${pageContext.request.contextPath}/JobInterviewCtr/addJobInterview">
      
       <h3>Id Candidate:</h3>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}" placeholder="Id Candidate"> <br>
       <h3>Date:</h3>
        <input class="dati" type="date" id="date" name="date" placeholder="Add Date"><br>
       <h3>State Job Interview:</h3>
       	<input class="dati" type="number" id="stateJobInterview.idStateJobInterview" name="stateJobInterview.idStateJobInterview" placeholder="Add id State Job Interview"> <br>
       <h3>Outcome:</h3>
       	<input class="dati" type="number" id="outcome" name="outcome" placeholder="Add Outcome"> <br>
       <h3>Notes:</h3>
       	<input class="dati" type="text" id="notes" name="notes" placeholder="Add Notes"> <br>
       <h3>Employee:</h3>
        <input class="dati" type="number" id="employee.idEmployee" name="employee.idEmployee" placeholder="Add id Employee"> <br>
       
        <input class="button" type="submit" value="Submit">
    	</form>

	   	<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br> 
	</div>   
</body>
</html>