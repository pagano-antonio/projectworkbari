<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ page import="com.model.JobOffer" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Job Offer</title>
<style>
		body{
	    margin: 5px 5px;
	    margin-left: auto;
	    margin-right: auto;
		background-color: #FFF8EA;
		background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
		background-size: cover;
		background-repeat: no-repeat;
		text-align: center;
	    vertical-align:middle;
	    display: block;
	    margin-left: 300px;
	    margin-right: 300px;	 
		}
	
		h3, .text {
		font-family: Trebuchet MS, sans-serif;
	    color: #594545;
	   	}
   	
	  	.button {
		font-family: Trebuchet MS, sans-serif;
		background-color: #815B5B;
		border: none;
		color: white;
		padding: 5px 15px;
		border-radius: 10px;
	    margin-bottom: 15px;
	    margin-upper: 15px;
	    margin-left: auto;
	    margin-right: auto;
	    }
	    

	</style>
</head>
<body>
<% JobOffer j = (JobOffer)request.getAttribute("JobOffer");%>
<form action="${pageContext.request.contextPath}/JobOfferCtr/putJobOffer" method="POST">
    <br>
	<label class="text" for="idJobOffer">Id Job Offer:</label><br>
	<input readonly id="idJobOffer" name="idJobOffer" value="<%= j.getIdJobOffer() %>"> <br>
	<label class="text" for="title">Title:</label><br>
	<input type="text" id="title" name="title" value="<%= j.getTitle() %>"> <br>
	<label class="text" for="description">Description:</label><br>
	<input type="text" id="description" name="description" value="<%= j.getDescription() %>"> <br>
	<label class="text" for="startDate">Start date:</label><br>
	<input type="date" id="startDate" name="startDate" value="<%= j.getStartDate() %>"> <br>
	<label class="text" for="endDate">End date:</label><br>
	<input type="date" id="endDate" name="endDate" value="<%= j.getEndDate() %>"> <br>
	<label class="text" for="idCompanyClient">Id Company Client:</label><br>
	<input readonly id="companyClient.idCompanyClient" name="companyClient.idCompanyClient" value="<%= j.getCompanyClient().getIdCompanyClient() %>"> <br>
	<label class="text" for="minRal">Min Ral:</label><br>
	<input type="number" id="minRal" name="minRal" value="<%= j.getMinRal() %>"> <br>
	<label class="text" for="maxRal">Max Ral:</label><br>
	<input type="number" id="maxRal" name="maxRal" value="<%= j.getMaxRal() %>"> <br>
	<label class="text" for="idContractType">Id Contract Type:</label><br>
    <input readonly id="contractType.idContractType" name="contractType.idContractType" value="<%= j.getContractType().getIdContractType() %>"> <br>
	<br>
	<input class="button" type="submit" value="Update">
	
	</form>
	
	<h3> Return to HOME</h3>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button class="button">HOME</button></a></td> <br>
</body>
</html>