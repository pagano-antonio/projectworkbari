<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error!</title>
</head>
<body>
<br>
<h2>Unexpected error!</h2>
<p> ${messaggioErrore} </p>

<br>
<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/CompanyClientCtr/homePage"><button>HOME</button></a> <br>
</body>
</html>