<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/stile.css" type="text/css">
<link rel="stylesheet" href="css/form.css" type="text/css">
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>
	<form name="myForm" action="registrazione" method="post"
		onsubmit="return fieldValidation()">


<div align="center">
		<h2>REGISTRAZIONE UTENTE</h2>


		<h3>Nome</h3>
		<input type="text" id="nome" name="nome">
		<c:forEach items="${lista}" var="errore">
			<c:if test="${errore.campoValidato=='nome'}"> ${errore.descrizioneErrore}</c:if>
		</c:forEach>
		<h3>Cognome</h3>
		<input type="text" id="cognome" name="cognome">
		<c:forEach items="${lista}" var="errore">
			<c:if test="${errore.campoValidato=='cognome'}"> ${errore.descrizioneErrore}</c:if>
		</c:forEach>
		<h3>Username</h3>
		<input type="text" id="username" name="username">
		<c:forEach items="${lista}" var="errore">
			<c:if test="${errore.campoValidato=='username'}"> ${errore.descrizioneErrore}</c:if>
		</c:forEach>

		<h3>Password</h3>
		<input type="password" id="password" name="password">
		<c:forEach items="${lista}" var="errore">
			<c:if test="${errore.campoValidato=='password'}"> ${errore.descrizioneErrore}</c:if>
		</c:forEach>
		<br> <br> <input type="submit" value="registra"
			class="button"><br>

	</form>
	<br>
	<br>
	<br>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>