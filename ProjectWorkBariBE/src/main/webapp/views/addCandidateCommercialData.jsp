<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate Commercial Data</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/CandidateCtr/addCandidateCommercialData">
        <h3>Insert Candidate Commercial Data:</h3>
        <input class="dati" type="number" id="currentRal" name="currentRal" placeholder="Add current Ral"> <br>
        <input class="dati" type="number" id="monthRefund" name="monthRefund" placeholder="Add month Refund"> <br>
        <input class="dati" type="number" id="businessCost" name="businessCost" placeholder="Add business Cost"><br>
        <input class="dati" type="number" id="subsidyFlag" name="subsidyFlag" placeholder="Add subsidy Flag"><br>
        <input class="dati" type="text" id="notes" name="notes" placeholder="Add notes"><br>

        <input class="submit" type="submit" value="Submit">
    </form>
</body>
</html>