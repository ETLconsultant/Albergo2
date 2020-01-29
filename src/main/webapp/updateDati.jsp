<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aggiorna Dati</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="css/stile.css" type="text/css">
</head>
<body>

<% String message = (String)session.getAttribute("message");%>


<body>
<%if (message!=null ){%>
<%=message %>
<%} %>

<p Id="mex"></p>
<form name="myForm" action="ServletUpdate" method="post"  onsubmit="fieldValidation()">

<p>Username: </p>
<input type ="text" name = "username" size = "20px"  >

<p>Nome: </p>
<input type ="text" name = "nome" size = "20px"  >

<p>Cognome: </p>
<input type ="text" name = "cognome" size = "20px"  >

<p>Password:</p>
<input type ="password" name = "password" size = "20px" >


<input type = "submit" name = "update" value ="Aggiorna Dati">

</form>
<%@include file="Footer.jsp"%>
</body>
</html>