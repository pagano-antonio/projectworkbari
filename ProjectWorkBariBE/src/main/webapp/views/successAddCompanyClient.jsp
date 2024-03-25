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


 
 <tr>
  <td>${CompanyClient.idCompanyClient}</td>
  <td>${CompanyClient.name}</td>
  <td>${CompanyClient.address}</td>
  <td>${CompanyClient.city}</td>

 
 
 
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClient?idCompanyClient=${CompanyClient.idCompanyClient}"><button>ADD NEW COMPANY CLIENT</button></a></td>
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/prePutCompanyClient?idCompanyClient=${CompanyClient.idCompanyClient}"><button>UPDATE</button></a></td>
<td><a href="${pageContext.request.contextPath}/CompanyClientCtr/deleteCompanyClient?idCompanyClient=${CompanyClient.idCompanyClient}"><button>DELETE</button></a></td>

</tr>

<h3> Return to HOME</h3>
	<a href="${pageContext.request.contextPath}/CompanyClientCtr/homePage"><button class="button">HOME</button></a>


</table>
</body>
</html>