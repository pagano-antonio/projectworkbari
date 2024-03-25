<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.model.JobOffer" %>
<%@ page import="com.model.JobOfferSkill" %>
    
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
	
 <% JobOffer j = (JobOffer)request.getAttribute("resJobOffer");%>
 
 <tr>
 <td><%= j.getIdJobOffer() %></td> 
 <td><%= j.getTitle() %></td>
 <td><%= j.getDescription() %></td>
 <td><%= j.getStartDate() %></td>
 <td><%= j.getEndDate() %></td>
 <td><%= j.getCompanyClient().getIdCompanyClient() %></td>
 <td><%= j.getMinRal() %></td>
 <td><%= j.getMaxRal() %></td>
 <td><%= j.getContractType().getIdContractType() %></td>
 
 


<td><a href="${pageContext.request.contextPath}/JobOfferCtr/prePutJobOffer?idJobOffer=<%= j.getIdJobOffer() %>"><button>Update</button></a></td>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/deleteJobOffer?idJobOffer=<%= j.getIdJobOffer() %>"><button>Delete</button></a></td>



</tr>
</table>

<h3>About Job Offer</h3>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/skillJobOffer?idJobOffer=<%=j.getIdJobOffer() %>"><button>Skill</button></a></td>
<td><a href="${pageContext.request.contextPath}/SkillCtr/preAddSkill?idJobOffer=<%= j.getIdJobOffer() %>"><button>Add New Skill</button></a></td>


<h3>Return to Home</h3>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button>HOME</button></a></td> <br>
</body>
</html>