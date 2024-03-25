<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job Interview</title>
</head>
<body>
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
       
        <input class="submit" type="submit" value="Submit">
    </form>
    
   	<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>
</body>
</html>