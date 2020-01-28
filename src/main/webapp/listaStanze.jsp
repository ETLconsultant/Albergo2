<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<style>
.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
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
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="image/standard.jpg" alt="New York" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>Camera Standard</h3>
					<p>
						Le camere standard offrono comfort e servizi di ottimo<br>
						livello, per tutti i budget: tutte le stanze sono state<br>
						ristrutturate di recente e arredate in stile moderno e godono di<br>
						un’ampia veduta sul parco degli ulivi. Le camere sono dotate di<br>
						aria condizionata, cassaforte, frigobar, televisore e telefono.
					</p>
				</div>
			</div>

			<div class="item">
				<img src="image/business.jpg" alt="Chicago" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>Camera Business</h3>
					<p>
						Tusiness Room: Viaggi per lavoro? Ecco la soluzione perfetta <br>
						per il tuo relax. Comodissimo letto alla francese+scrivania+wifi <br>
						pensato per lavorare… Ti occorre altro?
					</p>
				</div>
			</div>

			<div class="item">
				<img src="image/family.jpg" alt="Chicago" width="1200" height="700">
				<div class="carousel-caption">
					<h3>Camera Family</h3>
					<p>
						Le Family room rappresentano la soluzione ideale per chi <br>
						viaggia in famiglia e per piccoli gruppi. Dotate di due ampi letti
						<br> matrimoniali, possono accogliere fino a 5 persone
						aggiungendo un <br> ulteriore letto o culla. A differenza
						delle precedenti tipologie, <br> queste camere dispongono di
						un ampio bagno con vasca e doccia, <br> sono inoltre
						decisamente più grandi rispetto alle Deluxe, <br> riuscendo
						così q soddisfare le esigenze di una famiglia.
					</p>
				</div>
			</div>

			<div class="item">
				<img src="image/suite.jpg" alt="Los Angeles" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>Suite</h3>
					<p>
						Anusca Palace Hotel dispone di due Suite matrimoniali<br>
						arredate in stile moderno e dotate di ogni comfort. Le nostre<br>
						suite sono dotate di aria condizionata, cassaforte e frigobar;<br>
						l’hotel offre in esclusiva il pacchetto Sky Tv con SPORT e CINEMA.<br>

						Le suite matrimoniali sono disponibili anche per uso singola.
					</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container text-center">
		<h3>I nostri servizi:</h3>

		<br>
		<div class="row">
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Bar</strong>
				</p>
				<br> <a href="#demo" data-toggle="collapse"> <img
					src="image/bar.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo" class="collapse">
					<p>Servizio Free drink</p>
					<p>Orario bar serale:</p>
					<p>20.00 - 02.00 </p>
				</div>
			</div> 
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Lavanderia</strong>
				</p>
				<br> <a href="#demo2" data-toggle="collapse"> <img
					src="image/lavanderia.jpg" class="img-circle person" alt="Random Name"
					width="255" height="255">
				</a>
				<div id="demo2" class="collapse">
					<p>Ritiro della biancheria sporca presso la sede del cliente,</p>
					<p>lavaggio restituzione che, come per il prelievo, verra'
						effettuata</p>
					<p>direttamente nella sede del cliente</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Centro Benessere</strong>
				</p>
				<br> <a href="#demo3" data-toggle="collapse"> <img
					src="image/spa.jpg" class="img-circle person" alt="Random Name"
					width="255" height="255">
				</a>
				<div id="demo3" class="collapse">
					<p>Con accesso a palestra,</p>
					<p>piscina coperta 25 metri,</p>
					<p>area Tropicale e grotte.</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
