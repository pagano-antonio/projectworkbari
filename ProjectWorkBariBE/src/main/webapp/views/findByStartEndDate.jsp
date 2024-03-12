<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method ="get" action="${pageContext.request.contextPath}/JobOfferCtr/findByStartEndDate"> 



<h3>Insert start and end date:</h3>

<input type="date" id="startDate" name="startDate" placeholder="Start Date:"> <br>
<input type="date" id="endDate" name="endDate" placeholder="End Date:"> <br>
<input type="submit" value="Invio">





</body>
</html>