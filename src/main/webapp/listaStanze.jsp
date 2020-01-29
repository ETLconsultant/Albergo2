<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="it.accenture.model.Stanza"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>
<body>
	<table>
		<tr>
			<th>Numero stanza</th>
			<th>Tipo stanza</th>
			<th>Posti letto</th>
			<th>Prezzo notte</th>
			<th>Disponibilita'</th>
		</tr>
		<%
			ArrayList<Stanza> stanze = (ArrayList<Stanza>) session.getAttribute("stanze");
			pageContext.setAttribute("listaStanze", stanze);
		%>
		<c:forEach var="ling" items="${listaStanze}">

			<tr>
				<td><c:out value="${ling.numeroStanza}"></c:out></td>
				<td><c:out value="${ling.tipoStanza}"></c:out></td>
				<td><c:out value="${ling.postiLetto}"></c:out></td>
				<td><c:out value="${ling.prezzoNotte}"></c:out></td>
				<td><c:out value="${ling.disponibile}"></c:out></td>

			</tr>
		</c:forEach>
	</table>


	<%@include file="Footer.jsp"%>
</body>
</html>
