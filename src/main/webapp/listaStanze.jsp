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
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">


<script>function f(s) {
	console.log(s);
		session.setAttribute("ns", s.getNumeroStanza());
		
	}
</script>


</head>
<body> 



<div align="center">
<button class="button2"><a class="link" href="Standard.jsp">Standard </a></button>
<button class="button2"><a class="link" href="Business.jsp">Business</a></button>
<button class="button2"><a class="link" href="Family.jsp">Family</a></button>
<button class="button2"><a class="link" href="Suite.jsp">Suite</a></button>
</div>
<br> <br> <br>
	<table id="tabella">
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
				<form action="Prenota" method="post">
			<tr>
				<td><c:out value="${ling.numeroStanza}"></c:out></td>
				<td><c:out value="${ling.tipoStanza}"></c:out></td>
				<td><c:out value="${ling.postiLetto}"></c:out></td>
				<td><c:out value="${ling.prezzoNotte}"></c:out></td>
				<script>console.log("riga");</script>	
				<td><c:if test="${ling.disponibile==true }">
				
			
				<input type="submit" class="button3" name="b" data-value="${ling.numeroStanza}">
				<input type="hidden" name ="c" value="${ling.tipoStanza}">
			
				 
				 </c:if> 
				 <c:if test="${ling.disponibile==false }">
				<button class="button3 disabled">Non Disponibile </button>
				 </c:if> 
				 </td>
				

			</tr>
				</form>
		</c:forEach>
		
	
	</table>


<%@include file="Footer.jsp"%>
</body>
</html>
