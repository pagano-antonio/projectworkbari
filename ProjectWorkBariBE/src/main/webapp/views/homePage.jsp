<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h4>Welcome to Java Final Project</h4>

<!-- Login -->
<div>
	<a href="${pageContext.request.contextPath}/EmployeeCtr/login"><button>Login</button></a> <br>
</div>
<br>
<!-- Candidate -->
<div>
	<h4>Candidate</h4>
	<form action="${pageContext.request.contextPath}/CandidateCtr/chooseFindKeyword">
		<label for="find">Find By</label>
      	<select name="find" id="find">
	        <option value="surname">Surname</option>
	        <option value="city">City</option>
	        <option value="phone">Phone</option>
	        <option value="skill">Skill</option>
	        <option value="educationDegreeType">Id Education</option>
	        <option value="jobInterview">Id State Job Interview</option>
	        <option value="outcome">Outcome</option>
	        <option value="workExperiences">Company</option>
      	</select>
      	<input type="submit" value="Submit">
     </form>  
    <br>
	
	<a href="${pageContext.request.contextPath}/CandidateCtr/preAddCandidate"><button>Add New</button></a>
</div>
<br>

<!-- Job Offer -->
<div>
	<h4>Job Offer</h4>
	<form action="${pageContext.request.contextPath}/JobOfferCtr/chooseFindKeyword">
		<label for="find">Find By</label>
      	<select name="find" id="find">
	        <option value="title">Title</option>
	        <option value="date">Start and End Date</option>
	        <option value="companyClient">Company</option>
	        <option value="ral">RAL</option>
	        <option value="contractType">Contract Type</option>
	        <option value="skill">Skill</option>
      	</select>
      	<input type="submit" value="Submit">
    </form>
    <br>
    
    <a href="${pageContext.request.contextPath}/JobOfferCtr/preAddJobOffer"><button>Add New</button></a>
</div>
<br>

<!-- Company -->
<div>
	<h4>Company</h4>
	<form action="${pageContext.request.contextPath}/CompanyClientCtr/chooseFindKeyword">
		<label for="find">Find By</label>
      	<select name="find" id="find">
	        <option value="name">Name</option>
	        <option value="city">City</option>
      	</select>
      	<input type="submit" value="Submit">
    </form>
    <br>
    
    <a href="${pageContext.request.contextPath}/CompanyClientCtr/preAddCompanyClient"><button>Add New</button></a>
</div>
<br>

<!-- Image -->
<div>
</div>

</body>
</html>