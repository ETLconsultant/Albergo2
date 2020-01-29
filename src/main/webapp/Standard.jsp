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
<title>Camera Standard</title>
<link rel="stylesheet" href="css/stile.css" type="text/css">
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="image/standard.jpg" alt="New York" width="1200"
					height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/standard2.jpg" alt="Chicago" width="1200"
					height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/standard3.jpg" alt="Chicago" width="1200"
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
			<h2>Camera Standard</h2>
			<p>
				Le camere standard offrono comfort e servizi di ottimo<br>
				livello, per tutti i budget: tutte le stanze sono state<br>
				ristrutturate di recente e arredate in stile moderno e godono di<br>
				un ampia veduta sul parco degli ulivi. Le camere sono dotate di<br>
				aria condizionata, cassaforte, frigobar, televisore e telefono.

			</p>
		</div>
		<div class="column" style="background-color: #bbb;">
			<h2>Descrizione</h2>
			<br>
			<p>
				Le camere standard godono di una metratura compresa tra i 25 e <br>
				i 30 mq, servizi inclusi. Tutte le camere sono dotate letti singoli,
				<br> sostituibili,su richiesta, con letto matrimoniale. <br>
				Parcheggio esterno privato.
			</p>
		</div>
	</div>



	<footer><%@include file="Footer.jsp"%>
	</footer>
</body>

</html>