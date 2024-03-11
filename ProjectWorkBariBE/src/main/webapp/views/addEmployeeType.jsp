<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Type</title>
</head>
<body>

	<form method ="post" action="${pageContext.request.contextPath}/EmployeeTypeCtr/addEmployeeType">
        <h3>Insert Employee Type Informations:</h3>
        <input class="dati" type="text" id="description" name="description" placeholder="Add description"> <br>

        <input class="submit" type="submit" value="Submit">
    </form>

</body>
</html>