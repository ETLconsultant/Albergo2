<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Area Personale</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="css/areaP.css" type="text/css">
</head>
<% String messageArea = (String)session.getAttribute("messageArea");%>
<%String username1 = (String)session.getAttribute("username"); 
String msg = (String)request.getAttribute("msg");%>
<body>

<%if (msg != null) {
				%>
				<%=msg%>
				<%} %>

<%if (messageArea!=null && msg==null){%>
<%=messageArea %>
<%} %>
<%if (msg == null) {%>
				
				
<p>Ciao <%=username1 %>, da qui puoi modificare i tuoi dati o cancellare il tuo account. Seleziona l'operazione che vuoi effettuare: </p>
<br>

	<%}	%>
	
	<button class="button4"><a href="updateDati.jsp" id="dati"> Modifica Dati</a></button>
	
	<div class="wrap">
		<p>Da qui puoi modificare i tuoi dati o cancellare il tuo account.
			Seleziona l'operazione che vuoi effettuare:</p>


		<button class="button4">
			<a href="updateDati.jsp" id="dati"> Modifica Dati</a>
		</button>


		<form action="Delete" method="post">

			<input type="submit" name="cancellare" value="Cancella account"
				class="cancella">
		</form>
	</div>
	<%@include file="Footer.jsp"%>
</body>


</html>