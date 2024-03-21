<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Outcome</title>
</head>
<body>

<h3> Insert Outcome to find:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/findByOutcome">
		
		<input class="text" type="text" id="jobInterviews.outcome" name="jobInterviews.outcome" placeholder="Insert Outcome"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>

</body>
</html>