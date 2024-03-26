<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Candidate</title>
	
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

<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/addCandidate">
        <h3>Insert Candidate Personal Data:</h3>
        <label class="text" for="name">Name:</label><br>
        <input class="dati" type="text" id="name" name="name" placeholder="Add name"> <br>
        <label class="text" for="surname">Surname:</label><br>
        <input class="dati" type="text" id="surname" name="surname" placeholder="Add surname"> <br>
        <label class="text" for="birthday">Birthday:</label><br>
        <input class="dati" type="date" id="birthday" name="birthday" placeholder="Add birthday"><br>
        <label class="text" for="birthPlace">Birth Place:</label><br>
        <input class="dati" type="text" id="birthPlace" name="birthPlace" placeholder="Add birthPlace"><br>
        <label class="text" for="address">Address:</label><br>
        <input class="dati" type="text" id="address" name="address" placeholder="Add address"> <br>
        <label class="text" for="city">City:</label><br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add city"><br>
        <label class="text" for="email">Email:</label><br>
        <input class="dati" type="text" id="email" name="email" placeholder="Add email"> <br>
        <label class="text" for="phone">Phone:</label><br>
        <input class="dati" type="number" id="phone" name="phone" placeholder="Add phone"> <br> <br>

        <input class="button" type="submit" value="Submit">
    </form>
    
    <h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br>
	
</body>
</html>