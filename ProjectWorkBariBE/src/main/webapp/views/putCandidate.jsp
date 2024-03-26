<!DOCTYPE html>



<%@ page import="com.model.Candidate" %>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Candidate</title>
	
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


<% Candidate c = (Candidate)request.getAttribute("CandidateList"); %>
	<form method ="post"action="${pageContext.request.contextPath}/CandidateCtr/putCandidate" >
	

	<h3>Update Candidate:</h3>
	
	
	    <label class="text" for="idCandidate">Id Candidate:</label><br>
	    <input readonly id="idCandidate" name="idCandidate" value="<%=c.getIdCandidate()%>"> <br>
	    <label class="text" for="name">Name:</label><br>
	    <input class="dati" type="text" id="name" name="name" value="<%=c.getName()%>"> <br>
        <label class="text" for="surname">Surname:</label><br>
        <input class="dati" type="text" id="surname" name="surname"  value="<%=c.getSurname()%>"> <br>
        <label class="text" for="birthday">Birthday:</label><br>
        <input class="dati" type="date" id="birthday" name="birthday"  value="<%=c.getBirthday()%>"><br>
        <label class="text" for="birthPlace">Birth Place:</label><br>
        <input class="dati" type="text" id="birthPlace" name="birthPlace"  value="<%=c.getBirthPlace()%>"><br>
        <label class="text" for="address">Address:</label><br>
        <input class="dati" type="text" id="address" name="address" value="<%=c.getAddress()%>"> <br>
        <label class="text" for="city">City:</label><br>
        <input class="dati" type="text" id="city" name="city" value="<%=c.getCity()%>"><br>
        <label class="text" for="email">Email:</label><br>
        <input class="dati" type="text" id="email" name="email" value="<%=c.getEmail()%>"> <br>
        <label class="text" for="phone">Phone:</label><br>
        <input class="dati" type="number" id="phone" name="phone" value="<%=c.getPhone()%>"> <br>

        <input class="button" type="submit" value="Submit">

	 
	</form>
	
	   <h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
	
</body>
</html>