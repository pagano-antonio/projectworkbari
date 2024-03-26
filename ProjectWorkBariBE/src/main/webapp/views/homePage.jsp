<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	
	<style>
	

	
	
	
	
	
	body{
	background-color: #FFF8EA;
	background-image:url(https://i.pinimg.com/originals/f7/89/05/f78905347ceb391cd84288a97c74001c.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	}

	
	h1 {
	text-align: center;
	font-family: Trebuchet MS, sans-serif;
	color: #594545}
	
	h3 {
	text-align: center;
	font-family: Trebuchet MS, sans-serif;
	background-color: #594545;
	border-width: 2px;
    border-radius: 0px;
	color: white;
	margin: 0px 0px;
	margin-bottom: 15px;
    border:2 px solid #ddd;
    border-color: #3d2f2d;
    border-style: outset;
	
	}
	
	.login {
	position: absolute;
	top:3%;
	right: 5%;
	font-family: Trebuchet MS, sans-serif;
	}
	
	.blocco {
	position: relative;
	display: inline-block;
	width: 25%;
	border-width: 2px;
	text-align:center;
    border:2px solid #ddd;
    background-color: #FFF8EA;
    border-color: #594545;
    margin: 5px 5px;
    margin-left: 15px;
    margin-right: auto;
	}
	
	.label {
	font-family: Trebuchet MS, sans-serif;
	}
	
	.select{
	width: 50%;
	text-align: center;
	font-family: Trebuchet MS, sans-serif;
	background-color: white;
	padding: 4px 10px;
	border: 1px solid #815B5B;
	}
	
	option[value=""]{
  	display:none;
	}
	
	.button {
	font-family: Trebuchet MS, sans-serif;
	background-color: #815B5B;
	border: none;
	color: white;
	padding: 5px 15px;
	border-radius: 10px;
    margin-bottom: 15px;
	}
	
	hr{
	color: #594545;
	text-align: center;
	width: 92%;
	}
	
	img {
	position: absolute;
	height: 45px;
	width: 45px;
	margin-left: 15px;
	}
	
	
	</style>
</head>

<body>

   

<!-- Login -->
	<div class="login">
		<a href="${pageContext.request.contextPath}/EmployeeCtr/login"><button class="button">Login</button></a> <br>
	</div>

	 <img src="https://i.pinimg.com/originals/be/b7/61/beb7617a1228d96dabb3c252509ce6b5.jpg" alt="logo"> 
	 
  <h1> Welcome to Java Final Project</h1>
<br>
<br>

<!-- Candidate -->
	<div class="blocco"> 
		<h3>Candidate</h3>
		<form action="${pageContext.request.contextPath}/CandidateCtr/chooseFindKeyword">
			<label class="label" for="find">Find By</label>
	      	<select class= "select" name="find" id="find">
	      		<option value="">  Select an option</option>
		        <option value="surname">Surname</option>
		        <option value="city">City</option>
		        <option value="phone">Phone</option>
		        <option value="skill">Skill</option>
		        <option value="educationDegreeType">Id Education Type</option>
		        <option value="jobInterview">Id State Job Interview</option>
		        <option value="outcome">Outcome</option>
		        <option value="workExperiences">Company</option>
	      	</select>
	      	<input class="button" type="submit" value="Submit">
	     </form>  
	
		<hr>
		
		<a href="${pageContext.request.contextPath}/CandidateCtr/preAddCandidate"><button class="button">Add New</button></a>
	</div>
	<br> <br>
	
<!-- Job Offer -->
	<div class="blocco">
		<h3>Job Offer</h3>
		<form action="${pageContext.request.contextPath}/JobOfferCtr/chooseFindKeyword">
			<label class="label" for="find">Find By</label>
	      	<select class= "select" name="find" id="find">
	      		<option value="">  Select an option</option>
		        <option value="title">Title</option>
		        <option value="date">Start and End Date</option>
		        <option value="companyClient">Company</option>
		        <option value="ral">RAL</option>
		        <option value="contractType">Contract Type</option>
		        <option value="skill">Skill</option>
	      	</select>
	      	<input class="button" type="submit" value="Submit">
	    </form>
	    

	    <hr>
	    
	    <a href="${pageContext.request.contextPath}/JobOfferCtr/preAddJobOffer"><button class="button">Add New</button></a>
	</div>
	<br> <br>
	
	
<!-- Company -->
	<div class="blocco">
		<h3>Company</h3>
		<form action="${pageContext.request.contextPath}/CompanyClientCtr/chooseFindKeyword">
			<label class="label" for="find">Find By</label>
	      	<select class= "select" name="find" id="find">
	      		<option value="">  Select an option</option>
		        <option value="name">Name</option>
		        <option value="city">City</option>
	      	</select>
	      	<input class="button" type="submit" value="Submit">
	    </form>
	  
		<hr>
	    
	    <a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClient"><button class="button">Add New</button></a>
	</div>
	<br>
	
<!-- Image -->
	<div>
	</div>

</body>
</html>