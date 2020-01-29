<%@page import="it.accenture.model.Prenotazione"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successo</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<% String username1 = (String)session.getAttribute("username");
String password = (String)session.getAttribute("password");
String cognome = (String)session.getAttribute("cognome");
String nome = (String)session.getAttribute("nome");
String id_utente = (String)session.getAttribute("id_utente");

%>
<body>
<div class="success">
<p>Congratulazioni <%=nome %>, ti sei registrato con successo! Di seguito puoi controllare che i dati inseriti siano corretti.</p>

<table border="8" cellspacing="30" cellpadding="14" align="left"> 
<tbody>

<tr><td>Username</td><td>Nome</td><td>Cognome</td><td>Password</td></tr>
<tr><td><%=username1 %></td><td><%=nome %></td><td><%=cognome %></td><td><%=password %></td></tr>

</tbody>
</table>
</div>
</body>
</html>