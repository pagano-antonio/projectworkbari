<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method ="get"action="${pageContext.request.contextPath}/ContractTypeCtr/findByIdContractType">


<h3>Insert ID Contract Type to find :</h3>
<input type="number" id="idContractType" name="idContractType" placeholder="ID Contract Type:"> <br>
<input type="submit" value="Invio">

</body>
</html>