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
</head>
<body>
<% 
int idUtente=(int)session.getAttribute("idUtente");
String username=(String)session.getAttribute("username");
String nome=(String)session.getAttribute("nome");
String password=(String)session.getAttribute("password");
String messaggio=(String)request.getAttribute("messaggio"); 
int numeroStanza = (int)session.getAttribute("numeroStanza");

if(messaggio!=null){%>
<%= messaggio%>
<%} %>


<br>Inserisci i dati per la prenotazione:<br>
<br>
Stanza numero <%= numeroStanza%><br>
<form name="FormPrenota" action="Prenota" method="post">
<input type="hidden"  name="idUtente" value=<%= idUtente%>><br>
<input type="hidden"  name="username" value=<%= username%>><br>
<input type="hidden"  name="nome" value=<%= nome%>><br>
 <p class="messaggi" id="utente"></p>
  DATA INIZIO:<br>
  <input type="date" name="dataInizio" ><br>
   <p class="messaggi" id="dataInizio"></p>
   DATA FINE:<br>
  <input type="date" name="dataFine" ><br>
   <p class="messaggi" id="dataFine"></p>
  SELEZIONA LA FORMULA CHE PREFERISCI:<br>
  <select name="formula">
    <option value="BB">B&B</option>
    <option value="MEZZA_PENSIONE">Mezza pensione</option>
    <option value="PENSIONE_COMPLETA">Pensione completa</option>
  </select>
  
  <input type="submit" name="prenota" value="prenota">
  
</form> 



</body>
</html>