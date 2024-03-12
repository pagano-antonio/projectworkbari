<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD
<title>Insert title here</title>
</head>
<body>

<form method ="get"action="${pageContext.request.contextPath}/ContractTypeCtr/findByIdContractType">


<h3>Insert ID Contract Type to find :</h3>
<input type="number" id="idContractType" name="idContractType" placeholder="ID Contract Type:"> <br>
<input type="submit" value="Invio">

=======
<title>Find By Id Contract Type</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ContractTypeCtr/findByIdContractType" method="GET">
<h3>Insert id contract type to find: </h3>
<input type="number" id="idContractType" name="idContractType" placeholder="Insert id contract type"><br>

<input type="submit" value="Submit">
</form>
>>>>>>> 493777cd7c47431e303be480f45930eb52c25ecd
</body>
</html>