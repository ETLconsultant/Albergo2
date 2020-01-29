<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.util.ArrayList" %>
<%@ page import= "it.accenture.model.Prenotazione" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Prenotazioni</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<table id="tabella">
		<tr>
			<th>ID PRENOTAZIONE</th>
			<th>NUMERO GIORNI</th>
			<th>DATA INIZIO</th>
			<th>DATA FINE</th>
			<th>FORMULA</th>
			<th>PREZZO TOTALE</th>
			<th>ID UTENTE</th>
			<th>NUMERO STANZA</th>
		</tr>
<% ArrayList<Prenotazione> listaprenotazioni = (ArrayList<Prenotazione>)session.getAttribute("prenotazioni");
pageContext.setAttribute("listaPrenot", listaprenotazioni);
%>

<c:forEach var="ling" items= "${listaPrenot}">
<tr>
<td><c:out value ="${ling.idPrenotazione}"> </c:out></td>
<td><c:out value ="${ling.numeroGiorni}"> </c:out></td>
<td><c:out value ="${ling.dataInizio}"> </c:out></td>
<td><c:out value ="${ling.dataFine}"> </c:out></td>
<td><c:out value ="${ling.formula}"> </c:out></td>
<td><c:out value ="${ling.prezzoTotale}"> </c:out></td>
<td><c:out value ="${ling.idUtente}"> </c:out></td>
<td><c:out value ="${ling.numeroStanza}"> </c:out></td>
</tr>
</c:forEach>
</table>
<%@include file="Footer.jsp"%>
</body>
</html>