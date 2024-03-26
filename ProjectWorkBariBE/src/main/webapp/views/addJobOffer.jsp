<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job Offer</title>
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
<form method ="post" action="${pageContext.request.contextPath}/JobOfferCtr/addJobOffer">
<br>
        <h3>Insert Job Offer Data:</h3>
      
       <label class="text" for="title">Title:</label><br>
       <input class="dati" type="text" id="title" name="title" placeholder="Add Title"> <br>
       <label class="text" for="description">Description:</label><br>
       <input class="dati" type="text" id="description" name="description" placeholder="Add Description"> <br>
       <label class="text" for="startDate">Start Date:</label><br>
       <input class="dati" type="date" id="startDate" name="startDate" placeholder="Add Start Date"><br>
       <label class="text" for="endDate">End Date:</label><br>
       <input class="dati" type="date" id="endDate" name="endDate" placeholder="Add End Date"><br>
       <label class="text" for="idCompanyClient">Id Company Client:</label><br>
       <input class="dati" type="number" id="companyClient.idCompanyClient" name="companyClient.idCompanyClient" placeholder="Add id Company Client"> <br>
       <label class="text" for="minRal">Min Ral:</label><br>
       <input class="dati" type="number" id="minRal" name="minRal" placeholder="Add Min Ral"> <br>
       <label class="text" for="maxRal">Max Ral:</label><br>
       <input class="dati" type="number" id="maxRal" name="maxRal" placeholder="Add Max Ral"> <br>
       <label class="text" for="idContractType">Id Contract Type:</label><br>
       <input class="dati" type="number" id="contractType.idContractType" name="contractType.idContractType" placeholder="Add id Contract Type"> <br>
       <br> 
       <input class="button" type="submit" value="Submit"> <br> 
    </form>
    <td><a href="${pageContext.request.contextPath}/JobOfferCtr/homePage"><button class="button">HOME</button></a></td>
</body>
</html>