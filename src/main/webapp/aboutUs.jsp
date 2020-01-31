<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> La nostra Storia </title>
<jsp:include page='intestazione.jsp' />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<style>
#storia{
text-align = justify;
color = black;
}
#centrato{
text-align = center;
}
</style>
</head>

<body>
	<div>
		<h3 id="centrato"> GRUPPO 2: NON UN SEMPLICE HOTEL </h3>
			<p id="storia">
				L'albergo Gruppo 2 nasce due anni fa grazie al gruppo di Javani Gruppo 2!
				L'unione di idee innovative ha contribuito alla realizzazione di un 
				hotel all'avanguardia e dinamico. Seppure punti ad offrire ai suoi ospiti 
				servizi tecnologici di ultima generazione non perde di vista i valori cardine che rendono un albergo
				diverso da un semplice edificio: fiducia, professionalit�, cortesia e simpatia.    
				
				Vuoi prenderti del tempo per rilassarti? Hai in programma un meeting aziendale ma
				non hai bisogno di una location attrezzata? L'hotel Gruppo 2 � la scelta giusta!  
			</p>
	</div>
	<div class="row text-center slideanim">
		<div class="col-sm-4">
			<div class="rounded">
				<img src="Accoglienza.jpg" class="img-responsive" width="400"
					height="300" alt="Accoglienza">
				<p>
					<strong> Accoglienza in hotel </strong>
				</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="rounded">
				<img src="meeting.jpg" class="img-responsive" width="400"
					height="300" alt="meeting">
				<p>
					<strong> Organizzazione eventi e sale meeting </strong>
				</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="rounded">
				<img src="ristorante.jpg" class="img-responsive" width="400"
					height="300" alt="ristorante">
				<p>
					<strong> Ristorante </strong>
				</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="rounded">
				<img src="relax.jpg" class="img-responsive" width="400" height="300"
					alt="relax">
				<p>
					<strong> Ambienti rilassanti </strong>
				</p>
			</div>
		</div>
	</div>
</body>
<footer>
<%@include file="/fondopagina.jsp"%>
</footer>
</html>