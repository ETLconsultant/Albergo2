
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<style>

input[type=text]{
border: 2px solid black;
border-radius: 4px;
width: 30%;
}

input[type=password]{
border: 2px solid black;
border-radius: 4px;
width: 30%;
}
.button {
	background-color: white;
	border: 2px solid #008CBA;
	color: black;
	padding: 12px 28px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
}

.button:hover {
	background-color: #008B8B;
	color: white;
}
</style>
</head>
<% String messageLogin = (String)session.getAttribute("messageLogin");%>

<body>
	<div align="center">
<%if (messageLogin!=null ){%>
<%=messageLogin %>
<%} %>
		<h2>Benvenuto! Inserisci Username e Password</h2>
		<form action="Login" method="post">
			<h3>Utente</h3>
			<input type="text" name="username" size="20 px">
			<h3>Password</h3>
			<input type="password" name="password" size="20 px"> <br> <br>
			<input type="hidden" name="nome" value="nome" size="20 px"> 
			<input type="hidden" name="cognome" value="cognome" size="20 px"> 
			<input type="submit" name="submit" value="Invia" class="button">	
		</form>

		<br> <br> <br>

		<h3>
			Non sei ancora registrato? <a href="registrazione.jsp">Clicca
				qui! </a>
		</h3>

	</div>

	<%@include file="Footer.jsp"%>
</body>
</html>