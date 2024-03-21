<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ page import="com.model.JobOffer" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Job Offer</title>
</head>
<body>
<% JobOffer j = (JobOffer)request.getAttribute("JobOffer");%>
<form action="${pageContext.request.contextPath}/JobOfferCtr/putJobOffer" method="POST">

	<label for="idJobOffer">Id Job Offer:</label><br>
	<input readonly id="idJobOffer" name="idJobOffer" value="<%= j.getIdJobOffer() %>"> <br>
	<label for="title">Title:</label><br>
	<input type="text" id="title" name="title" value="<%= j.getTitle() %>"> <br>
	<label for="description">Description:</label><br>
	<input type="text" id="description" name="description" value="<%= j.getDescription() %>"> <br>
	<label for="startDate">Start date:</label><br>
	<input type="date" id="startDate" name="startDate" value="<%= j.getStartDate() %>"> <br>
	<label for="endDate">End date:</label><br>
	<input type="date" id="endDate" name="endDate" value="<%= j.getEndDate() %>"> <br>
	<label for="idCompanyClient">Id Company Client:</label><br>
	<input readonly id="companyClient.idCompanyClient" name="companyClient.idCompanyClient" value="<%= j.getCompanyClient().getIdCompanyClient() %>"> <br>
	<label for="minRal">Min Ral:</label><br>
	<input type="number" id="minRal" name="minRal" value="<%= j.getMinRal() %>"> <br>
	<label for="maxRal">Max Ral:</label><br>
	<input type="number" id="maxRal" name="maxRal" value="<%= j.getMaxRal() %>"> <br>
	<label for="idContractType">Id Contract Type:</label><br>
    <input readonly id="contractType.idContractType" name="contractType.idContractType" value="<%= j.getContractType().getIdContractType() %>"> <br>
	
	<input type="submit" value="Update">
	
	</form>

</body>
</html>