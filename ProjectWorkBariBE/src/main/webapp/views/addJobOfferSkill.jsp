<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job Offer Skill</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/JobOfferSkillCtr/addJobOfferSkill">
        <h3>Insert Job Offer Skill Data:</h3>
      
        <input class="dati" type="number" id="jobOffer.idJobOffer" name="jobOffer.idJobOffer" placeholder="Add id Job Offer"> <br>
        <input class="dati" type="number" id="skill.idSkill" name="skill.idSkill" placeholder="Add id Skill"> <br>
     
        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>