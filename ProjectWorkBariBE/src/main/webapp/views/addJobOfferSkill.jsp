<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Job Offer Skill</title>
	
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
<form method ="post" action="${pageContext.request.contextPath}/JobOfferSkillCtr/addJobOfferSkill">
        <h3>Insert Job Offer Skill Data:</h3>
      
        <input class="text" type="hidden" id="jobOfferSkill.idJobOfferSkill" name="jobOfferSkill.idJobOfferSkill"> <br>
        <label class="text" for="idJobOffer">Id Job Offer:</label><br>
        <input class="text" readonly type="number" id="idJobOffer" name="idJobOffer" value="${idJobOffer}"> <br>
        <label class="text" for="idSkill">Skill:</label><br>
        <!--  <input class="text" type="number" id="jobOfferSkill.idSkill" name="jobOfferSkill.idSkill" placeholder="Add id Skill"> <br> -->
			<select name="idSkill" id="idSkill">
	        	<c:forEach var="Skills" items="${listSkill}">
	            <option value="${Skills.idSkill}" ${Skills.idSkill == Skills.idSkill ? 'selected' : ''}>${Skills.title}</option>
	        	</c:forEach>
        	</select><br>
<br>
        <input class="button" type="submit" value="Submit">
        <br>
    </form>
</body>
</html>