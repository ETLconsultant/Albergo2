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
<link rel="stylesheet" href="css/form.css" type="text/css">
</head>
<body>
<div align="center">
<% String message = (String)session.getAttribute("message");%>

<%if (message!=null ){%>
<%=message %>
<%} %>

<p Id="mex"></p>
<form name="myForm" action="Update" method="post"  onsubmit="fieldValidation()">

<p>Username: </p>
<input type ="text" name = "username" size = "20px"  >

<p>Nome: </p>
<input type ="text" name = "nome" size = "20px"  >

<p>Cognome: </p>
<input type ="text" name = "cognome" size = "20px"  >

<p>Password:</p>
<input type ="password" name = "password" size = "20px" >

<br> <br> <br>
<input type = "submit" name = "update" value ="Aggiorna Dati" class="button">

</form>
</div>
<%@include file="Footer.jsp"%>
</body>
</html>