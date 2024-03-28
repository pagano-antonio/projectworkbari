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
	
	</style>
	
</head>
<body>
<br>
<br>
<br>
 <div class ="container">
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
			<th colspan="4">OPERATION</th>
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
 
 


<td><a href="${pageContext.request.contextPath}/JobOfferCtr/prePutJobOffer?idJobOffer=<%= j.getIdJobOffer() %>"><button class="button">UPDATE</button></a></td>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/deleteJobOffer?idJobOffer=<%= j.getIdJobOffer() %>"><button class="button">DELETE</button></a></td>
<%-- <td><a href="${pageContext.request.contextPath}/JobOfferCtr/skillJobOffer?idJobOffer=<%=j.getIdJobOffer() %>"><button class="button">SKILL</button></a></td>--%>


</tr>
</table>
<h3>About this Job Offer:</h3>
<td><a href="${pageContext.request.contextPath}/SkillCtr/preAddSkill?idJobOffer=<%= j.getIdJobOffer() %>"><button class="button">ADD NEW SKILL</button></a></td>

<h3>Return to HOME</h3>
<td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button class="button">HOME</button></a></td> 

</div>
</body>
</html>