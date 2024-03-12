<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method ="get"action="${pageContext.request.contextPath}/CompanyClientCtr/findByIdCompanyClient">


<h3>Insert ID Company Client to find Job Offer:</h3>
<input type="number" id="idCompanyClient" name="idCompanyClient" placeholder="ID CompanyClient:"> <br>
<input type="submit" value="Invio">





</body>
</html>