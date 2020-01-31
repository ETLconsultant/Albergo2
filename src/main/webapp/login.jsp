
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="intestazione.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accedi</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="css/footer.css">

<style>
body {
	background-image: url('Immagini/login.jpg');
}

form {
	width: 40%;
	padding: 8px 8px;
	margin: 20px 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: rgba(255, 255, 255, .5);
}

input[type=submit] {
	width: 60px;
	background-color: #2979ff;
	color: white;
	padding: 8px 10px;
	margin: 8px 0;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.messaggi {
	color: red;
}
</style>

</head>
<body>

	<div class="wrap">
		<%
			String messaggio = (String) request.getAttribute("messaggio");
			if (messaggio != null) {
				out.println(messaggio);
			}
		%>
		<br>
		<p class="messaggi" id="username"></p>
		<p class="messaggi" id="password"></p>
		
		<form name="FormLogin" action="login" method="post"
			onsubmit="return validateLogin()">

			<b>Inserisci i tuoi dati:</b> 
			<br> 
			Username: <input type="text"
				name="username" size="16 px">
				<br>
			
			<br> 
			Password: <input type="password" name="password"
				size="16px">
				
			<br>
			<br> <input type="submit" name="bottone" value="Accedi">
			

			Non sei registrato? <a href="registrazione.jsp"> Registrati< </a>
			
			<br> 
			Torna alla <a href="Home.jsp"> Home </a>

		
		<br>

	</div>

</body>
<footer> <jsp:include page='fondopagina.jsp' /> </footer>
</html>