<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Prenotazioni</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

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

#titolo_tabella {
	padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

</style>
</head>
<body>

<div >
		<table id="customers">
		
				<tr id="titolo_tabella">
						<td><%="id utente"%>
						<td><%="id Prenotazione"%>
						<td><%="numero stanza"%>
						<td><%="data inizio"%>
						<td><%="data fine"%>
						<td><%="numeri giorni"%>
						<td><%="formula"%>
						<td><%="prezzo"%>
				</tr>
			<c:forEach var="lista" items="${requestScope.listaPrenotazione}">
				<br>
					<tr>
						<td><c:out value= "${lista.idUtente}">
							</c:out>
							</td>
						<td><c:out value= "${ lista.idPrenotazione}">
							</c:out>
							</td>
						<td><c:out value= "${lista.numeroStanza}">
							</c:out>
							</td>
						<td><c:out value= "${lista.dataInizio}">
							</c:out>
							</td>
						<td><c:out value= "${lista.dataFine}">
							</c:out>
							</td>
						<td><c:out value= "${ lista.numeroGiorni}">
							</c:out>
							</td>
						<td><c:out value= "${lista.formula}">
							</c:out>
							</td>
						<td><c:out value= "${lista.prezzoTotale}">
							</c:out>
							</td>
					
				</tr>
				
			</c:forEach>

		</table>

	</div>

</body>
</html>