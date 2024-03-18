<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Company Client Name</title>
</head>
<body>

<h3>Insert a valid Company Client name:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CompanyClientCtr/findByNameCompanyClient">
		
		<input class="text" type="text" id="name" name="name" placeholder="Insert Company Client Name:"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>
</body>
</html>