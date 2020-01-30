<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prenotazione</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<%@include file="Header.jsp"%>
</head>
<body>

<c:set items="${requestScope.ns}" var= "ns" scope="page"/>
<c:set items="${requestScope.ts}" var= "ts" scope="page"/>

<form action="Prenota" method="post">
Data Check-in: <input id="datefield" type="date" min="2020-01-01" name="dataInizio" onload="fieldValidationDate()"></input>
<br></br>
Data Check-out: <input type="date" name="dataFine">
<br></br>
<select id="formula" name="formula" >
<option value ="nothing">formula
  <option value="BB">BB
  <option value="mezza_pensione">mezza pensione
  <option value="pensione_completa">pensione completa
</select>
<input ></input>


<br></br>



<input type="submit" name="submit">
</form>

	<%@include file="Footer.jsp"%>
</body>
</html>