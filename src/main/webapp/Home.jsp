<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}
 
/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
} 
</style>
<title>Home</title>
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
				<img src="image/sauna.jpg" alt="Image">
				<div class="carousel-caption">
				</div>
			</div>

			<div class="item">
				<img src="image/sauna1.jpg" alt="Image">
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="image/benessere.jpg" alt="Image">
				<div class="carousel-caption">
				</div>
			</div>
		</div>

		

	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
	</div>

	<div class="container text-center">
		<h3>Javani Resort e' il vostro paradiso, <br>
		 l incanto di un giardino privato a pochi passi dal vivace viavai di Milano.</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="image/a.jpg"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Sponsor ufficiale: Accenture S.p.A.</p>
			</div>
			<div class="col-sm-4">
				<img src="image/j.png"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Javani Gruppo 1</p>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<p>Entrando nella nostra Spa, alleviate le tensioni e inspirate immensa beatitudine! <br>
					Un profondo senso di conforto calma la mente e rilassa i muscoli.
				
				</div>
				<div class="well">
					<p>Infine, rilassatevi nella nostra avvolgente zona comfort con vista sulle Alpi. <br>
					 Avevate dimenticato di potervi sentire “fra le nuvole”.</p>
				</div>
			</div>
		</div>
	</div>
	<br>

	<%@include file="Footer.jsp"%>

</body>
</html>
