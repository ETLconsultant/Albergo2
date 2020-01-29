<%@page import="it.accenture.model.Prenotazione"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successo</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
Bravo, 
<% String username = (String)request.getAttribute("username"); %>
<%=username %>
Registrazione avvenuta con successo! 
<br>
Torna alla <a href="Home.jsp"> Home </a> ed effettua il login

</body>
</html>