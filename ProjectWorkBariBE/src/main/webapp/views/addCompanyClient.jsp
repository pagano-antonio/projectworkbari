<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Company Client</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CompanyClientCtr/addCompanyClient">
        <h3>Insert Company Client Data:</h3>
        
        <input class="dati" type="text" id="name" name="name" placeholder="Add Company Client name"> <br>
        <input class="dati" type="text" id="address" name="address" placeholder="Add Address"> <br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add City"><br>
        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>