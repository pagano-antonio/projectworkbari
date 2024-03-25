<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating Job Interview</title>
</head>
<body>
<div>
	<h3>Update Job Informations:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/JobInterviewCtr/updateJobInterview">
		<h3>Id Job Interview:</h3>
		<input class="" readonly type="number" id="idJobInterview" name="idJobInterview" value="${Interview.idJobInterview}" placeholder="Id Job Interview"> <br> 
		<h3>Id Candidate:</h3>
		<input class="" readonly type= "number" id="candidate.idCandidate" name="candidate.idCandidate" value="${Interview.candidate.idCandidate}" placeholder="Id Candidate Skill"> <br>
		<h3>Date:</h3>
		<input class="" type= "date" id="date" name="date" value="${Interview.date}" placeholder="Date"> <br>
		<h3>Id State Job Interview:</h3>
		<input class="" type= "number" id="stateJobInterview.idStateJobInterview" name="stateJobInterview.idStateJobInterview" value="${Interview.stateJobInterview.idStateJobInterview}" placeholder="Id State Job Interview"> <br>
		<h3>Outcome:</h3>
		<input class="" type= "number" id="outcome" name="outcome" value="${Interview.outcome}" placeholder="Outcome"> <br>
		<h3>Notes:</h3>
		<input class="" type= "text" id="notes" name="notes" value="${Interview.notes}" placeholder="Notes"> <br>
		<h3>Id Employee:</h3>
		<input class="" type= "number" id="employee.idEmployee" name="employee.idEmployee" value="${Interview.employee.idEmployee}" placeholder="Id Employee"> <br>
		
		<input class="submit" type="submit" value="Update">
	</form>
</div>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/Home"><button>HOME</button></a> <br>

</body>
</html>