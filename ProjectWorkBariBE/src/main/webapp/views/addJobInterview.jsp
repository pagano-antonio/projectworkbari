<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job Interview</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/JobInterviewCtr/addJobInterview">
        <h3>Insert Job Interview Data:</h3>
        <input class="dati" type="number" id="candidate.idCandidate" name="candidate.idCandidate" placeholder="Add id Candidate"> <br>
        <input class="dati" type="date" id="date" name="date" placeholder="Add Date"><br>
       <input class="dati" type="number" id="stateJobInterview.idStateJobInterview" name="stateJobInterview.idStateJobInterview" placeholder="Add id State Job Interview"> <br>
       <input class="dati" type="number" id="outcome" name="outcome" placeholder="Add Outcome"> <br>
       <input class="dati" type="text" id="notes" name="notes" placeholder="Add Notes"> <br>
        <input class="dati" type="number" id="employee.idEmployee" name="employee.idEmployee" placeholder="Add id Employee"> <br>
       
        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>