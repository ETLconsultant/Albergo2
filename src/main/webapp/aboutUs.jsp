<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>La nostra Storia</title>
<jsp:include page='intestazione.jsp' />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<style>
#storia {
	
	text-align: center;
	color: black;
}
h3{
	text-align: center;
}


</style>
</head>

<body>

<br>
	<div>
		<h3>
			<em> GRUPPO 2: NON UN SEMPLICE HOTEL </em>
		</h3>
		<br>
		<div id="storia">L'albergo Gruppo 2 nasce due anni fa grazie al
			gruppo di Javani Gruppo 2! L'unione di idee innovative ha contribuito
			alla realizzazione di un hotel all'avanguardia e dinamico. <br>
			Seppure punti ad offrire ai suoi ospiti servizi tecnologici di ultima
			generazione non perde di vista i valori cardine che rendono un
			albergo diverso da un semplice edificio: fiducia, professionalità,
			cortesia e simpatia. Vuoi prenderti del tempo per rilassarti? Hai in
			programma un meeting aziendale ma non hai bisogno di una location
			attrezzata? 
			L'hotel Gruppo 2 è la scelta giusta!
		</div>
	</div>

<br>
<br>
	<div class="row">
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/Accoglienza.jpg" alt="Accoglienza" style="width: 100%">
					<div class="caption">
						<em> Accoglienza e gentilezza sono per noi fondamentali.</em>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/relax.jpg" alt="Relax" style="width: 100%">
					<div class="caption">
						<em>Un luogo dove è possibile rilassarsi. Per davvero.</em>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/meeting.jpg" alt="Meeting" style="width: 100%">
					<div class="caption">
						<em>Organizziamo eventi e affittiamo location per meeting aziendali.</em>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
			<img src="Immagini/ristorante.jpg" alt="Ristorante" style="width: 100%">
					<div class="caption">
						<em>Un ristorante raffinato ed elegante arrichisce la nostra struttura.</em>
					</div>
				</a>
			</div>
		</div>
	</div>
	</div>

</body>
<footer>
	<%@include file="/fondopagina.jsp"%>
</footer>
</html>