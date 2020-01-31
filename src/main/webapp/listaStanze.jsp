<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page='intestazione.jsp' />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Stanze</title>
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
	width: 50px;
}

#titolo_tabella {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #4CAF50;
	color: white;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#centrato {
	padding: 0 25px;
	background-color: #4CAF50;
	color: white;
	padding: 8px 10px;
	border: none;
	border-radius: 5px;
}

.form {
	margin: 0 50px;
	text-align: center;
}

#no_button {
	width: 800 px;
	background-color: #FF4500;
	color: white;
	padding: 8px 10px;
	border: none;
	border-radius: 5px;
}
</style>
</head>


<body>

<%String username= (String) session.getAttribute("username"); %>


	<div>
		<table id="customers">

			<tr id="titolo_tabella">
				<td><%="Numero stanza"%>
				<td><%="tipo stanza"%>
				<td><%="Posti letto"%>
				<td><%="Prezzo notte"%>
				<td><%="disponibilita"%>
			</tr>
			<c:forEach var="lista" items="${requestScope.listaStanze}">
				<br>
				<tr>
					<td><c:out value="${lista.numeroStanza}">
						</c:out></td>
					<td><c:out value="${ lista.tipoStanza}">
						</c:out></td>
					<td><c:out value="${lista.postiLetto}">
						</c:out></td>
					<td><c:out value="${lista.prezzoNotte}">
						</c:out></td>
					<td size=40px><c:choose>
							<c:when test="${lista.disponibile}">
								<form action="Prenota" class="form">
									<button id="centrato" type="submit" name="button"
										value="${lista.numeroStanza}">Prenota</button>
								</form>
							</c:when>
							<c:otherwise>
								<div class="form">
									<button id="no_button" type="button"">Prenota</button>
								</div>

							</c:otherwise>
						</c:choose></td>
				</tr>

			</c:forEach>

		</table>

	</div>




</body>
<footer>
<%@include file="/fondopagina.jsp"%>
</footer>
</html>