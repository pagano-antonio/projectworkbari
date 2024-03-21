<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Id State Job Interview</title>
</head>
<body>

<h3> Insert Id State Job Interview to find:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/findByIdStateJobInterview">
		
		<input class="text" type="text" id="jobInterviews.stateJobInterview.idStateJobInterview" name="jobInterviews.stateJobInterview.idStateJobInterview" placeholder="Insert Id State Job Interview"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>