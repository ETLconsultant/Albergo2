
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="css/stile.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<% String messageLogin = (String)session.getAttribute("messageLogin");%>

<body>

	<div align="center">

		<h2>Benvenuto! Inserisci Username e Password</h2>
		<form name="myForm" action="Login" method="post"
			onsubmit="return fieldValidationLogin()">
			<div id="username2"></div>
			<div id="password2"></div>
			<div>
				<%
					if (messageLogin != null) {
				%>
				<%=messageLogin%>
				<%} %>
			</div>

			<h3>Utente</h3>
			<input type="text" name="username" size="20 px">

			<c:forEach items="${lista}" var="errore">
				<c:if test="${errore.campoValidato=='username'}"> ${errore.descrizioneErrore}</c:if>
			</c:forEach>

			<h3>Password</h3>
			<input type="password" name="password" size="20 px"
				data-toggle="popover" title="Attenzione"
				data-content="Ricordati di inserire almeno un numero,un carattere speciale, una lettera maiuscola e una maiuscola">
			<br> <br>
			<c:forEach items="${lista}" var="errore">
				<c:if test="${errore.campoValidato=='password'}"> ${errore.descrizioneErrore}</c:if>
			</c:forEach>
			<input type="hidden" name="nome" value="nome" size="20 px"> <input
				type="hidden" name="cognome" value="cognome" size="20 px"> <input
				type="submit" name="submit" value="Invia" class="button">
		</form>

		<br> <br> <br>

		<h3>
			Non sei ancora registrato? <a href="registrazione.jsp" class="reg">Clicca
				qui! </a>
		</h3>

	</div>
	<script> 
$(document).ready(function(){ 
    $('[data-toggle="popover"]').popover();    
}); 
</script>

	
  	<%@include file="Footer.jsp"%>
  
</body>
</html>