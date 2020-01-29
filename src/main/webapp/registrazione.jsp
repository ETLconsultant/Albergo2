<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<head>
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<style>
input[type=text] {
	border: 2px solid black;
	border-radius: 4px;
	width: 100%;
}

input[type=password] {
	border: 2px solid black;
	border-radius: 4px;
	width: 100%;
}

.button {
	background-color: white;
	border: 2px solid #008CBA;
	color: black;
	padding: 12px 28px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
}

.button:hover {
	background-color: #008B8B;
	color: white;
}
</style>
</head>
<body>
	<form name="myForm" action="registrazione" method="post" onsubmit="return fieldValidation()">
		<table align="center">

			<tr height="50" align="center">
				<th colspan="6" valign="middle">REGISTRAZIONE UTENTE</th>
			</tr>

			<tr height="50">
				<td width="20%">Nome</td>
				<td width="40%"><input type="text" id="nome" name="nome"></td>
				<td width="40%" id="nome2"><c:forEach items="${lista}" var="errore">
						<c:if test="${errore.campoValidato=='nome'}"> ${errore.descrizioneErrore}</c:if>
					</c:forEach>
					</td>
			</tr>

			<tr height="50">
				<td width="20%">Cognome</td>
				<td width="40%"><input type="text" id="cognome" name="cognome"></td>
				<td width="40%"><c:forEach items="${lista}" var="errore">
						<c:if test="${errore.campoValidato=='cognome'}"> ${errore.descrizioneErrore}</c:if>
					</c:forEach></td>
			</tr>
			<tr height="50">
				<td width="20%">Username</td>
				<td width="40%"><input type="text" id="username"
					name="username"></td>
				<td width="40%"><c:forEach items="${lista}" var="errore">
						<c:if test="${errore.campoValidato=='username'}"> ${errore.descrizioneErrore}</c:if>
					</c:forEach></td>
			</tr>
			<tr height="50">
				<td width="20%">Password</td>
				<td width="40%"><input type="password" id="password"
					name="password"></td>
				<td width="40%"><c:forEach items="${lista}" var="errore">
						<c:if test="${errore.campoValidato=='password'}"> ${errore.descrizioneErrore}</c:if>
					</c:forEach></td>
			</tr>
			<br>
			<br>
			<tr height="50">
				<th colspan="6" valign="middle"><input type="submit"
					value="registra" class="button"><br></th>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<br>
	<%@include file="Footer.jsp"%>
</body>
</html>