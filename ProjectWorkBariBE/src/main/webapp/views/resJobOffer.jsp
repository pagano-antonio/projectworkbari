<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.model.JobOffer" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update or Delete</title>
</head>
<body>
	<table>
		<tr>
			<th>ID JOB OFFER</th>
			<th>TITLE JOB OFFER</th>
			<th>DESCRIPTION JOB OFFER</th>
			<th>START DATE</th>
			<th>END DATE</th>
			<th>ID COMPANY CLIENT</th>
			<th>MIN RAL</th>
			<th>MAX RAL</th>
			<th>ID CONTRACT TYPE</th>
			<th colspan="2">OPERATION</th>
		</tr>
	
 <c:forEach var="res"  items="${listJobOffer}">
 
 <tr>
 <td>${res.idJobOffer}</td> 
 <td>${res.title}</td>
 <td>${res.description}</td>
 <td>${res.startDate}</td>
 <td>${res.endDate}</td>
 <td>${res.companyClient.idCompanyClient}</td>
 <td>${res.minRal}</td>
 <td>${res.maxRal}</td>
 <td>${res.contractType.idContractType}</td>
 
 


<td><a href="${pageContext.request.contextPath}/JobOfferCtr/prePutJobOffer?idJobOffer=${res.idJobOffer}"><button>Update</button></a></td>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/deleteJobOffer?idJobOffer=${res.idJobOffer}"><button>Delete</button></a></td>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td> <br>
</tr>
</c:forEach>
</table>
</body>
</html>