<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="it.accenture.model.Utente"%>
<!DOCTYPE html>
<html>
<<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/header.css" type="text/css">
</head>
<body> 
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.jsp">Javani Resort</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#">Chi Siamo</a></li>
					<li><form action="ListaStanze">
							<input type="submit" name="submit" value="Camere&Suite"
								class="button1">
						</form></li>
					<li><a href="#">Benessere&Spa</a></li>
					<li><a href="Contatti.jsp">Contatti</a></li>
				
				<% if(session.getAttribute("utente")!=null)  {
					%>
					<li><form action="ListaPrenotazioni">
					
							<input type="submit" name="submit" value="Lista Prenotazioni"
								class="button1">
						</form></li>
					<% } %>
					</ul>
				<ul class="nav navbar-nav navbar-right">
				<% if(session.getAttribute("utente")!=null)  {
					%>
				 <li><form action="Logout">
					<input type="submit" name="submit" value="Logout"
								class="button1">
					</form></li>
					<% } %>
					<% if(session.getAttribute("utente")==null)  {
					%>
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
								<% } %>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>