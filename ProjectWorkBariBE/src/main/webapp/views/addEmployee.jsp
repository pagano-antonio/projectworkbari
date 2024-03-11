<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<form method ="post" action="${pageContext.request.contextPath}/EmployeeCtr/addEmployee">
        <h3>Insert Employee Personal Data:</h3>
        <input class="dati" type="number" id="employeeType.idEmployeeType" name="employeeType.idEmployeeType" placeholder="Add Id Employee Type"> <br>
        <input class="dati" type="text" id="name" name="name" placeholder="Add name"> <br>
        <input class="dati" type="text" id="surname" name="surname" placeholder="Add surname"> <br>
        <input class="dati" type="text" id="email" name="email" placeholder="Add email"> <br>
        <input class="dati" type="text" id="password" name="password" placeholder="Add password"> <br>
        <input class="dati" type="text" id="username" name="username" placeholder="Add username"> <br>

        <input class="submit" type="submit" value="Submit">
    </form>

</body>
</html>