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
				<img src="image/family.jpg" alt="1" width="1200" height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/f1.jpg" alt="2" width="1200" height="700">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="image/f3.jpg" alt="3" width="1200" height="700">
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
			<h2>Camera Family</h2>
			<p>
				Le Family room rappresentano la soluzione ideale per chi <br>
				viaggia in famiglia e per piccoli gruppi. Dotate di due ampi letti <br>
				matrimoniali, possono accogliere fino a 5 persone aggiungendo un <br>
				ulteriore letto o culla.<br> A differenza delle precedenti tipologie, <br>
				queste camere dispongono di un ampio bagno con vasca e doccia, <br>
				sono inoltre decisamente piu grandi rispetto alle Deluxe, <br>
				riuscendo cosi a soddisfare le esigenze di una famiglia.
			</p>
		</div>
		<div class="column" style="background-color: #bbb;">
			<h2>Descrizione</h2>
			<br>
			<p>Il bagno dispone sia di un box doccia 90 x 90 con grande <br>
				soffione a pioggia fisso, sia di un ampia vasca. Il lavabo, <br>
				attrezzato con un miscelatore ed uno specchio illuminato, e' servito <br>
				da prese di corrente adeguate. All interno del bagno troverete anche <br>
				un intero set di bellezza, ulteriore plus per coccolarvi e prendervi <br>
				cura di voi stessi. Le Family room sono dotate di SMART TV <br>
				con digitale terrestre e canali satellitari. </p>
		</div>
	</div>



	<footer><%@include file="Footer.jsp"%>
	</footer>