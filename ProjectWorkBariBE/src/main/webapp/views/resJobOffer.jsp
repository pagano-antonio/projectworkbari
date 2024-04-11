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
<style>

body{
    margin: 15px;
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/5d/48/05/5d4805c0b10e0c526be005bffa60a3f7.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	text-align: center;
    vertical-align:middle;
    display: block; 
	}
	
	 .container {
       width: 70%; 
       margin: 0 auto; 
       padding: 20px; 
       box-sizing: border-box; 
        }
        
        
         table {
          border-collapse:collapse;
          width: 100%;
          height: 100%;
          margin-left: 2px;
      	  margin-right: 2px;
          
          } 
	
 
		 th {
	      text-align: center;
          font-family: Trebuchet MS, sans-serif;
          background-color: #594545;
          border-width: 2px;
          border-radius: 0px;
          color: white;
          font-size: 15px;
          margin: 0px 0px;
	      margin-bottom: 10px;
          border:2 px solid #ddd;
          border-color: #3d2f2d;
          border-style: outset;
           
         } 


           td {
                color: #594545;
                background-color: white;
                font-family: Trebuchet MS, sans-serif;
                font-size: 16px;
                text-align: center;
                vertical-align: middle;
                height: 30px;
                border:1.5px solid #ddd;
                border-color: #815B5B;     
                padding:4px;
              
                }   
            
   h3 {
	  font-family: Trebuchet MS, sans-serif;
      color: #594545;
	   }    
          
             
  .button {
	  font-family: Trebuchet MS, sans-serif;
	  background-color: #815B5B;
	  border: none;
	  color: white;
	  border-radius: 10px;
	  display: inline-block;
      padding: 5px 15px;
      margin-left: auto;
      margin-right: auto;
        
	 }
	 
  h2 {
	  font-family: Trebuchet MS, sans-serif;
      color: #594545;
	   }


</style>

</head>
<body>
<c:choose>
    <c:when test="${not empty listJobOffer}">
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
			<th>SKILL</th>
			<th colspan="2">OPERATION</th>
		</tr>

		<c:forEach var="res" items="${listJobOffer}">

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
				<td>
				<c:forEach var="skillJob" items="${res.getJobOfferSkills()}">
				<ul>
				<li>
				${skillJob.skill.title}
				</li>
				</ul>
				</c:forEach>
				</td>


				<td><a
					href="${pageContext.request.contextPath}/JobOfferCtr/prePutJobOffer?idJobOffer=${res.idJobOffer}"><button class="button">UPDATE</button></a></td>
				<td><a
					href="${pageContext.request.contextPath}/JobOfferCtr/deleteJobOffer?idJobOffer=${res.idJobOffer}"><button class="button">DELETE</button></a></td>
			</tr>
	<tr>
	<td colspan="12">	
	<h3> About this Job Offer:</h3>
	<a href="${pageContext.request.contextPath}/JobOfferCtr/skillJobOffer?idJobOffer=${res.idJobOffer}"><button class="button">SKILL</button></a></td>
	</tr>
		</c:forEach>
		
	</table>
	<br>
	</c:when>
	
	<c:otherwise>
	<h2>Result not found!</h2><br>
	</c:otherwise>
	</c:choose>
	
	<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
</body>
</html>