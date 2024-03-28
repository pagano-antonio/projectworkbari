<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Job Interview</title>
	
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

	<div>
		<h3>Insert Job Interview Informations:</h3>
		<form method ="post" action="${pageContext.request.contextPath}/JobInterviewCtr/addJobInterview">
      
       <label class="text" for="candidate.idCandidate">Id Candidate:</label><br>
        <input class="dati" readonly type="number" id="candidate.idCandidate" name="candidate.idCandidate" value="${idCandidate}" placeholder="Id Candidate"> <br>
       <label class="text" for="date">Date:</label><br>
        <input class="dati" type="date" id="date" name="date" placeholder="Add Date"><br>
       <label class="text" for="stateJobInterview.idStateJobInterview">State Job Interview:</label><br>
       	<select name="stateJobInterview.idStateJobInterview" id="stateJobInterview.idStateJobInterview">
        <c:forEach var="stateJobInterview" items="${listStateJobInterview}">
            <option value="${stateJobInterview.idStateJobInterview}" ${stateJobInterview.idStateJobInterview == Candidate.stateJobInterview.idStateJobInterview ? 'selected' : ''}>${stateJobInterview.title}</option>
        </c:forEach>
        </select><br>
       	<!--  <input class="dati" type="number" id="stateJobInterview.idStateJobInterview" name="stateJobInterview.idStateJobInterview" placeholder="Add id State Job Interview"> <br>-->
       <label class="text" for="outcome">Outcome:</label><br>
       	<input class="dati" type="number" id="outcome" name="outcome" placeholder="Add Outcome"> <br>
       <label class="text" for="notes">Notes:</label><br>
       	<input class="dati" type="text" id="notes" name="notes" placeholder="Add Notes"> <br>
       <label class="text" for="employee.idEmployee">Id Employee:</label><br>
        <select name="employee.idEmployee" id="employee.idEmployee">
        <c:forEach var="employee" items="${listEmployee}">
            <option value="${employee.idEmployee}" ${employee.idEmployee == Candidate.employee.idEmployee ? 'selected' : ''}>${employee.idEmployee}</option>
        </c:forEach>
        </select><br>
        <!--  <input class="dati" type="number" id="employee.idEmployee" name="employee.idEmployee" placeholder="Add id Employee"> <br>-->
       <br>
        <input class="button" type="submit" value="Submit">
    	</form>

	   	<h3> Return to HOME</h3>
		<a href="${pageContext.request.contextPath}/Home"><button class="button">HOME</button></a> <br> 
	</div>   
</body>
</html>