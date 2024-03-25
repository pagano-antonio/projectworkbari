<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Company Client city</title>
</head>
<body>
<h3>Insert a valid City:</h3>
	<form method ="get" action="${pageContext.request.contextPath}/CompanyClientCtr/findByCityCompanyClient">
		
		<input class="text" type="text" id="city" name="city" placeholder="Insert Company Client city:"> <br> 
		
		<input class="submit" type="submit" value="Search">
		
	</form>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/CompanyClientCtr/homePage"><button>HOME</button></a> <br>
</body>
</html>