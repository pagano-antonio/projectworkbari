<!DOCTYPE html>



<%@ page import="com.model.Candidate" %>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Candidate</title>
</head>

<style>



</style>
<body>


<% Candidate c = (Candidate)request.getAttribute("CandidateList"); %>
	<form method ="post"action="${pageContext.request.contextPath}/CandidateCtr/putCandidate" >
	

	<h3>Update Candidate:</h3>
	
	
	    <input readonly id="idCandidate" name="idCandidate" value="<%=c.getIdCandidate()%>"> <br>
	    <input class="dati" type="text" id="name" name="name" value="<%=c.getName()%>"> <br>
        <input class="dati" type="text" id="surname" name="surname"  value="<%=c.getSurname()%>"> <br>
        <input class="dati" type="date" id="birthday" name="birthday"  value="<%=c.getBirthday()%>"><br>
        <input class="dati" type="text" id="birthPlace" name="birthPlace"  value="<%=c.getBirthPlace()%>"><br>
        <input class="dati" type="text" id="address" name="address" value="<%=c.getAddress()%>"> <br>
        <input class="dati" type="text" id="city" name="city" value="<%=c.getCity()%>"><br>
        <input class="dati" type="text" id="email" name="email" value="<%=c.getEmail()%>"> <br>
        <input class="dati" type="number" id="phone" name="phone" value="<%=c.getPhone()%>"> <br>

        <input class="submit" type="submit" value="Submit">

	 
	</form>
	<br>
	<td><a href="${pageContext.request.contextPath}/CandidateCtr/homePage"><button>HOME</button></a></td> <br>
	
</body>
</html>