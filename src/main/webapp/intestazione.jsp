<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="it.accenture.model.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<link rel="stylesheet" type="text/css" href="stile.css">

<style>

*{
margin: 0;
padding : 0;
box-sizing: border-box;
}

.navbar navbar-expand-sm bg-dark navbar-dark, ul,  li , a{
font-size: 20px;
}

.nav-link{
float: right;

}


</style>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
  
</head>
<body>
<%
String username=(String)session.getAttribute("username");
%>

	<nav class="navbar navbar-default navbar-inverse" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.jsp">HOME</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="aboutUs.jsp">About Us</a></li>
					<li><a href="contatti.jsp">Dove siamo</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Tipi Stanze<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href=" listaStanze?tipoStanza=STANDARD">Standard</a></li>
							<li><a href="listaStanze?tipoStanza=FAMILY">Family</a></li>
							<li><a href=" listaStanze?tipoStanza=BUSINESS">Business</a></li>

							<li><a href="listaStanze?tipoStanza=SUITE">Suite</a></li>

						</ul></li>
					<li class="nav-item"><a class="nav-link"
						<%if (username!=null) {%> href="listaPrenotazioni">Lista
							prenotazioni</a> <%} %></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<%if (username!= null) {%> <a  href="logout">LOGOUT</a>
						<%} else { %> <a  href="login.jsp">LOGIN</a> <%} %>
					</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

</body>
</html>