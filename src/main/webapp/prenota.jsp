<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prenotazione</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>


<style>

form {

	width: 100 px;
  padding: 8px 8px;
  margin: 20px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  background-color: #c5cae9;
  
}

input[type=date], [type=formula]{
  width: 50 px;
  padding: 8px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  
}



input[type=submit] {
  width: 50 px;
  background-color: #2979ff;
  color: white;
  padding: 8px 10px;
  margin: 8px 0;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  
}

</style>

</head>
<body>

<% int idUtente=(int)session.getAttribute("idUtente");%>
<%String username=(String)session.getAttribute("username");%>
<%String nome=(String)session.getAttribute("nome");%>
<%String password=(String)session.getAttribute("password");%>
<%String messaggio=(String)request.getAttribute("messaggio"); %>
<%int numeroStanza = (int)session.getAttribute("numeroStanza");%>


<% if(messaggio!=null){%>
<%= messaggio%>
<%} %>
<br>

<h3>Inserisci i dati per la prenotazione:</h3><br>


<h5>Stanza numero </h5> 
<br>
	<form name="FormPrenota" action="Prenota" method="post">
	
		<p class="messaggi" id="utente"></p>
		
		
		<p>DATA INIZIO:</p><br>
		 <input type="date" name="dataInizio"><br>
		<p class="messaggi" id="dataInizio"></p><br>
		<p>DATA FINE:</p><br>
		 <input type="date" name="dataFine"><br>
		<p class="messaggi" id="dataFine"></p><br>
		
		
		<p>SELEZIONA LA FORMULA CHE PREFERISCI:</p> <br>
			 <select id="formula" name="formula">
				<option value="BB">B&B</option>
				<option value="MEZZA_PENSIONE">Mezza pensione</option>
				<option value="PENSIONE_COMPLETA">Pensione completa</option>
			</select> 
		<br>
		
		<input type="submit" name="prenota" value="prenota">

	</form>


</body>
<footer>
<%@include file="/fondopagina.jsp"%>
</footer>
</html>