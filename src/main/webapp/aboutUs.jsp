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
	max-width: 70%;
	text-align
	=
	justify;
	color
	=
	black;
}


</style>
</head>

<body>
	<div>
		<h3 text-align>
			<em> GRUPPO 2: NON UN SEMPLICE HOTEL </em>
		</h3>
		<div id="storia">L'albergo Gruppo 2 nasce due anni fa grazie al
			gruppo di Javani Gruppo 2! L'unione di idee innovative ha contribuito
			alla realizzazione di un hotel all'avanguardia e dinamico. Seppure
			punti ad offrire ai suoi ospiti servizi tecnologici di ultima
			generazione non perde di vista i valori cardine che rendono un
			albergo diverso da un semplice edificio: fiducia, professionalit�,
			cortesia e simpatia. Vuoi prenderti del tempo per rilassarti? Hai in
			programma un meeting aziendale ma non hai bisogno di una location
			attrezzata? L'hotel Gruppo 2 � la scelta giusta!</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/Accoglienza.jpg" alt="Accoglienza" style="width: 100%">
					<div class="caption">
						<p>Accoglienza e gentilezza sono per noi fondamentali</p>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/relax.jpg" alt="Relax" style="width: 100%">
					<div class="caption">
						<p>Un luogo dove � possibile rilassarsi. Per davvero.</p>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="Immagini/meeting.jpg" alt="Meeting" style="width: 100%">
					<div class="caption">
						<p>Organizziamo eventi e affittiamo location per meeting aziendali.</p>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
			<img src="Immagini/ristorante.jpg" alt="Ristorante" style="width: 100%">
					<div class="caption">
						<p>Un ristorante raffinato ed elegante arrichisce la nostra struttura.</p>
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