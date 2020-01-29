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
<%@include file="Header.jsp"%>
</head>
<body>
<form action="Prenota" method="post">
Data Check-in: <input type="date" name="dataInizio">
<br></br>
Data Check-out: <input type="date" name="dataFine">
<br></br>
<select id="formula" >
<option value ="nothing">formula
  <option value="BB">BB
  <option value="mezza_pensione">mezza pensione
  <option value="pensione_completa">pensione completa
</select>
<br></br>

<select id="tipo" >
<option value ="nothing">tipo stanza
  <option value="STANDARD">STANDARD
  <option value="FAMILY">FAMILY
  <option value="BUSINESS">BUSINESS
   <option value="SUITE">SUITE
</select>
<br></br>


</form>

	<%@include file="Footer.jsp"%>
</body>
</html>