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
<br>Inserisci i dati per la prenotazione:<br>
<form name="FormPrenota" action="Prenota" method="post">
<input type="hidden" required minlenght="4" maxlength="30" name="idUtente" value=<%= idUtente%>><br>
 <p class="messaggi" id="idUtente"></p>
  DATA INIZIO:<br>
  <input type="date" name="dataInizio" value=<%= dataInizio%>><br>
   <p class="messaggi" id="dataInizio"></p>
   DATA FINE:<br>
  <input type="date" name="dataFine" value=<%= dataFine%>><br>
   <p class="messaggi" id="dataFine"></p>
  NOME:<br>
  <input type="text" name="nome" value=<%= nome%> ><br>
   <p class="messaggi" id="nome"></p>
  NUMERO STANZA:<br>
  <input type="number" name="numeroStanza" value="<%= numeroStanza%>"><br>
  <p class="messaggi" id="numeroStanza"></p>
  
  <input type="submit" name="prenota" value="prenota">
  
</form> 



</body>
</html>