<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "it.accenture.model.Prenotazione"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String messaggio=(String)request.getAttribute("messaggio"); 
Prenotazione p=(Prenotazione)request.getAttribute("prenotazione");

if(messaggio!=null){%>
<%= messaggio%>
<%} %>

DATA INIZIO: <%= p.getDataInizio() %>
DATA FINE: <%= p.getDataFine() %>
FORMULA: <%= p.getFormula().name() %>
PREZZO TOTALE: <%= p.getPrezzoTotale() %>
NUMERO STANZA: <%= p.getNumeroStanza() %>






</body>
</html>