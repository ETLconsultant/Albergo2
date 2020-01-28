
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accedi</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>
	<%
			String messaggio = (String) request.getAttribute("messaggio");
			if (messaggio != null) {
				out.println(messaggio);
			}
		%>
		<br>
		<form action="login" method="post">
			<p>
				<b>Inserisci i tuoi dati:</b>
			</p>
			<br>
			<p>
				Username: <input type="text" name="username" size="16 px" required>
			<p id="username"></p>
			</p>
			<p>
				Password: <input type="password" name="password" size="16 px"
					required>
			<p id="psd"></p>
			</p>
			<input type="submit" name="bottone" value="Accedi">
		</form>
		<br>
		<p>
			Non sei registrato? <a href="registrazione.jsp"> Registrati< </a>
		</p>
	</div>
</body>
</html>