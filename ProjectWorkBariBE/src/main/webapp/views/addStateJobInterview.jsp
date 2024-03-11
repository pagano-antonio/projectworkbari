<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add State Job Interview</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/StateJobinterviewCtr/addStateJobInterview">
        <h3>Insert State Job Interview:</h3>
        <input class="dati" type="text" id="title" name="title" placeholder="Add title"> <br>
        <input class="dati" type="text" id="description" name="description" placeholder="Add description"> <br>
        <input class="submit" type="submit" value="Submit">
</form>
</body>
</html>