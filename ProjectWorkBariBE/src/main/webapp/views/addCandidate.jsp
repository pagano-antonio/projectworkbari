<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Candidate</title>
	
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/addCandidate">
        <h3>Insert Candidate Personal Data:</h3>
        <input class="dati" type="text" id="name" name="name" placeholder="Add name"> <br>
        <input class="dati" type="text" id="surname" name="surname" placeholder="Add surname"> <br>
        <input class="dati" type="date" id="birthday" name="birthday" placeholder="Add birthday"><br>
        <input class="dati" type="text" id="birthPlace" name="birthPlace" placeholder="Add birthPlace"><br>
        <input class="dati" type="text" id="address" name="address" placeholder="Add address"> <br>
        <input class="dati" type="text" id="city" name="city" placeholder="Add city"><br>
        <input class="dati" type="text" id="email" name="email" placeholder="Add email"> <br>
        <input class="dati" type="number" id="phone" name="phone" placeholder="Add phone"> <br>

        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>