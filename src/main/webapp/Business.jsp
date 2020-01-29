<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="Header.jsp"%>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Business</title>
<link rel="stylesheet" href="css/stile.css" type="text/css">
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="image/b4.jpg" alt="1" width="1200"
					height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/b2.jpg" alt="2" width="1200"
					height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/b3.jpg" alt="3" width="1200"
					height="700">
				<div class="carousel-caption"></div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="row">
		<div class="column" style="background-color: #aaa;">
			<h2>Camera Business</h2>
			<p>
				Javani Resort è particolarmente attento alle esigenze <br>
				dei clienti business ed è per questo che offre servizi speciali <br>
				<br> Tante attenzioni in più per ritrovare le stesse comodità
				del tuo<br> ufficio nella nostra camera Business e rendere il
				tuo soggiorno <br> piacevole e confortevole:
			</p>
		</div>
		<div class="column" style="background-color: #bbb;">
			<h2>Descrizione</h2>
			<br>
			<p>connessione Internet Wi-Fi gratuito in camera e nelle aree <br>
				comuni principali quotidiani a disposizione nella hall Business <br>
				point Early Breakfast su richiesta Express Check-Out su richiesta <br>
				per velocizzare la partenza cassette di sicurezza servizio in camera <br>
				GRATUITO</p>
		</div>
	</div>



	<footer><%@include file="Footer.jsp"%>
	</footer>
</body>
</html>