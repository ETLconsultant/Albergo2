<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="Header.jsp"%>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
<style>
* {
	box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
	float: left;
	width: 50%;
	padding: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}
</style>
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
				<img src="image/suite.jpg" alt="1" width="1200" height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/s1.jpg" alt="2" width="1200" height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/s2.jpg" alt="3" width="1200" height="700">
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
			<h2>Camera Suite</h2>
			<p>Tra le 16 camere di Javani Resort, scegliete quella che <br>
				meglio si adatta al Vostro stile, e godete dei numerosi servizi del <br>
				Palazzo: riservate un ora di benessere in esclusiva nell area relax, <br>
				sorseggiate un aperitivo e fatevi coccolare dal <br>
				servizio attento del Ristorante Mensa o da quello piu <br>
				semplice del Bar, sempre deliziati dalla cucina 
				di Nicola Santagata.</p>
		</div>
		<div class="column" style="background-color: #bbb;">
			<h2>Descrizione</h2>
			<br>
			<p>
				Elegante camera suite, con ampia zona lavoro, scrivania, <br>
				poltrona e divano. TV schermo piatto, minibar, coffee maker, wi-fi <br>
				gratuito. Bagno privato con combinazione doccia/vasca.<br> 
				Climatizzazione a regolazione autonoma separata tra bagno e camera<br>
				Cassaforte e mini bar gratuito 
				<br>
			</p>
		</div>
	</div>



	<footer><%@include file="Footer.jsp"%>
	</footer>