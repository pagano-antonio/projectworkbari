<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method ="get"action="${pageContext.request.contextPath}/EducationCtr/findByIdEducation">


<h3>Insert ID Education to find :</h3>
<input type="number" id="idEducation" name="idEducation" placeholder="ID Education:"> <br>
<input type="submit" value="Invio">

</body>
</html>