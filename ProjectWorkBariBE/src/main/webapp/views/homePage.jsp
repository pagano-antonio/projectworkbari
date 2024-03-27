<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	.notifiche-box {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background-color: #FFF8EA;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 10px;
  max-width: 300px;
}
	
	
	</style>
</head>

<body>

   

<!-- Login -->
	<div class="login">
		<a href="${pageContext.request.contextPath}/EmployeeCtr/login"><button class="button">Login</button></a> <br>
	</div>

	 <img src="https://i.pinimg.com/originals/be/b7/61/beb7617a1228d96dabb3c252509ce6b5.jpg" alt="logo"> 
	 
  <h1 id="welcome-text"> Welcome to Java Final Project</h1>
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
	
	<div id="notifiche" class="notifiche-box">
  <h3>Notifications</h3>
</div>
	<script>
        // Codice JavaScript per rendere il testo dinamico
        window.onload = function() {
            var welcomeText = document.getElementById('welcome-text');
            var greetings = ['Welcome', 'Bienvenido', 'Bienvenue', 'Willkommen', 'Benvenuto', 'Namaste'];

            welcomeText.addEventListener('mouseover', function() {
                var randomIndex = Math.floor(Math.random() * greetings.length);
                welcomeText.textContent = greetings[randomIndex] + ' to Java Final Project';
            });

            // Ripristina il testo originale quando il mouse esce dall'elemento
            welcomeText.addEventListener('mouseout', function() {
                welcomeText.textContent = 'Welcome to Java Final Project';
            });
            simulazioneNotifiche();
        };
        
     // Array di notifiche simulate
        var notificheSimulate = [
            { testo: "Update available on 28/03. The site will be unavailable from 00:00 to 06:00. For info, please contact the service centre." },
            
        ];

        // Funzione per visualizzare una notifica
        function mostraNotifica(testo) {
            var notificheDiv = document.getElementById("notifiche");
            var notificaElemento = document.createElement("div");
            notificaElemento.innerText = testo;
            notificheDiv.appendChild(notificaElemento);
        }

        // Simulazione del flusso di notifiche
        function simulazioneNotifiche() {
            notificheSimulate.forEach(function(notifica) {
                setTimeout(function() {
                    mostraNotifica(notifica.testo);
                }, Math.random() * 5000); // Simula l'arrivo delle notifiche in intervalli casuali
            });
        }

        
        
        </script>

</body>
</html>