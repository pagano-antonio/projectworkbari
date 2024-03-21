<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Contract Type</title>
</head>
<body>

<h3>Insert Contract Type:</h3>
	<form method ="post" action="${pageContext.request.contextPath}/JobOfferCtr/findByContractType">
		
		<input class="text" type="number" id="idContractType" name="idContractType" placeholder="Insert Id Contract Type"> <br> 
		
		<input class="submit" type="submit" value="Search">
	</form>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td> <br>
</body>
</html>