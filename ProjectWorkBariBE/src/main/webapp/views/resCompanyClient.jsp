<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.CompanyClient" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Client Result:</title>
</head>
<body>
    <table>
        <tr>
            <th>ID COMPANY CLIENT</th>
            <th>NAME</th>
            <th>ADDRESS</th>
            <th>CITY</th>
            
        </tr>

 <c:forEach var="res"  items="${companyClientList}">
 
 <tr>
 <td>${res.idCompanyClient}</td> 
 <td>${res.name}</td>
 <td>${res.address}</td>
 <td>${res.city}</td>
 
 
 
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/prePutCompanyClient?idCompanyClient=${res.idCompanyClient}"><button>Aggiorna</button></a></td>
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=${res.idCompanyClient}"><button>Elimina</button></a></td>

</tr>
</c:forEach>
</table>
</body>
</html>