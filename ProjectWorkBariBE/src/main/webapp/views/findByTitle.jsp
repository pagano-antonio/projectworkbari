<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method ="get" action="${pageContext.request.contextPath}/JobOfferCtr/findByTitle"> 



<h3>Insert Job Offer Title:</h3>

<input type="text" id="title" name="title" placeholder="Job Offer Title:"> <br>

<input type="submit" value="Search">

</form>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td> <br>
</body>
</html>