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
.thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
 .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  
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
	
  <!-- Container (Javani Resort) -->
<div class="container-fluid text-center bg-grey">
  <h2>Javani Resort e' il vostro paradiso</h2><br>
  <h4>l incanto di un giardino privato a pochi passi dal vivace viavai di Milano.</h4>
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="image/a.jpg" alt="Accenture" width="400" height="300">
        <p><strong>Accenture</strong></p>
        <p>Sponsor ufficiale del progetto</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="image/j.png" alt="Javani Gruppo 1" width="400" height="300">
        <p><strong>Javani Gruppo 1</strong></p>
        <p>Lucia, Nicola, Marco, Simone & Sara</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="image/r.png" alt="Javani Resort" width="400" height="300">
        <p><strong>Javani Resort</strong></p>
        <p>Soddisfatti...o soddisfatti</p>
      </div>
    </div>
  </div>
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
	<%@include file="Footer.jsp"%>

</body>
</html>
