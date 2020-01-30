<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "it.accenture.model.Prenotazione"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>La tua prenotazione</title>

<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#centrato{
  padding: 0 25px;
   background-color: #4CAF50;
  color-text: white;
  padding: 8px 10px;
  border: none;
  border-radius: 5px;
}

</style>
</head>
<body>

<% String messaggio=(String)request.getAttribute("messaggio"); 
Prenotazione p=(Prenotazione)request.getAttribute("prenotazione");

if(messaggio!=null){%>
<%= messaggio%>
<%} %>



	<table id="customers">
		
				<tr id="titolo_tabella">
						
						<td><p>data inizio</p>
						</td>
						<td><p>data fine</p>
						</td>
						<td><p>formula</p>
						</td>
						<td><p>prezzo</p>
						</td>
						<td><p>numero stanza</p>
						</td>
				</tr>
				<tr >
						<td><%= p.getDataInizio() %>
						<td><%= p.getDataFine() %>
						<td><%= p.getFormula().name() %>
						<td><%= p.getPrezzoTotale() %>
						<td><%= p.getNumeroStanza() %>
						
				</tr>
			</table>
			<div >
			<button id="centrato" ><a  href="listaPrenotazioni.jsp" > INVIA</a></button>
			</div>
		



</body>
</html>