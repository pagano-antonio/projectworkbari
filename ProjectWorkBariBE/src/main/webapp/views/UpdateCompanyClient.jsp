<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.CompanyClient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Update Company Client:</h3>
    <table>
        <tr>
            <th>ID COMPANY CLIENT</th>
            <th>NAME</th>
            <th>ADDRESS</th>
            <th>CITY</th>
            

       </tr>
         
   
 
 <%
CompanyClient c =(CompanyClient)request.getAttribute("CompanyClient");%>

<form method ="POST"action="${pageContext.request.contextPath}/CompanyClientCtr/UpdateCompanyClient">


<input readonly id="idCompanyClient" name="idCompanyClient" value=<%out.print(c.getIdCompanyClient());%>>
 <input type="text" id="name" name="name" value=<%out.print(c.getName());%>>
 <input type="text" id="address" name="address" value=<%out.print(c.getAddress());%>>
 <input type="text" id="city" name="city" value=<%out.print(c.getCity());%>>
 <input type="submit" value="Aggiorna">
 
</form>
</table>
</body>
</html>