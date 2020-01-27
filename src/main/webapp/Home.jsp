<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="scripts/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="../jquery.nivo.slider.pack.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
		
	}
}

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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
			<a class="navbar-brand" href="Home.jsp">Javanti Resort</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Chi Siamo</a></li>
				<li><a href="#">Camere&Suite</a></li>
				<li><a href="#">Ristorante&Bar</a></li>
				<li><a href="#">Benessere&Spa</a></li>
				<li><a href="#">Contatti</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>Via Valtorta,44 <br> 
				20100 Milano - Italia<br>
				T. 02 001000 <br>
				javani.gruppo1@gmail.com<br>
				</p>
				<img src="image/f.png" width="200px">
			</div>
			<div class="col-sm-8 text-left">
				<h1>Benvenuti!</h1>
				<p>
					Qui a Javani Resort, presentiamo offerte esclusive e selezionate
					con cura su viaggi e hotel di lusso, in Italia e all'estero. <br>
					Offriamo sconti fino al 70% sul prezzo che pagheresti prenotando su
					qualsiasi altro sito. <br> Ti stai chiedendo come sia possibile? <br>
					Beh, anche ai migliori hotel capita di avere camere vuote... <br>
					Per accedere alle nostre tariffe riservate ai soli soci, non devi
					far altro che registrarti a Javani Resort con il tuo indirizzo
					email.<br> Registrarsi è completamente gratuito e rimarrà
					sempre tale. <br> In cambio, avrai accesso esclusivo a tariffe
					davvero imbattibili. <br> Sfoglia la gallery del nostro Hotel!
				</p>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="image/uno.jpg" alt="JavaniResort">
			</div>

			<div class="item">
				<img src="image/due.jpg" alt="JavaniResort">
			</div>

			<div class="item">
				<img src="image/tre.jpg" alt="JavaniResort">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>



			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>Questo sito è stato offerto da:</p>
				</div>
				<div class="well">
				<img src="image/a.jpg" width="170px" height="170px">
					<p ><a href="www.accenture.com">Accenture S.p.A.</a></p>
				</div>
				<div class="well">
				<img src="image/j.png" width="170px" height="170px">
			</div>
		</div>
	</div>



<div class="footer">
  <p>Sito creato da: Javani gruppo 1</p>
</div>
</body>

</html>