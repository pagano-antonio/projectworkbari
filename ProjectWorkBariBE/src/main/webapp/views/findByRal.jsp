<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find By Ral</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/JobOfferCtr/findByMinRalAfterAndMaxRalBefore" method="GET">
<h3>Insert min ral and max ral to find: </h3>
<input type="number" id="minRal" name="minRal" placeholder="Insert min ral"><br>
<input type="number" id="maxRal" name="maxRal" placeholder="Insert max ral"><br>

<input type="submit" value="Search">

</form>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td> <br>
</body>
</html>