<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job Offer</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/JobOfferCtr/addJobOffer">
        <h3>Insert Job Offer Data:</h3>
      
        <input class="dati" type="text" id="title" name="title" placeholder="Add Title"> <br>
       <input class="dati" type="text" id="description" name="description" placeholder="Add Description"> <br>
      <input class="dati" type="date" id="startDate" name="startDate" placeholder="Add Start Date"><br>
      <input class="dati" type="date" id="endDate" name="endDate" placeholder="Add End Date"><br>
       <input class="dati" type="number" id="companyClient.idCompanyClient" name="companyClient.idCompanyClient" placeholder="Add id Company Client"> <br>
      <input class="dati" type="number" id="minRal" name="minRal" placeholder="Add Min Ral"> <br>
       <input class="dati" type="number" id="maxRal" name="maxRal" placeholder="Add Max Ral"> <br>
       <input class="dati" type="number" id="contractType.idContractType" name="contractType.idContractType" placeholder="Add id Contract Type"> <br>
         
        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>