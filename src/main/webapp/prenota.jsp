<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prenotazione</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/areaP.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<%@include file="Header.jsp"%>
</head>
<% String messagePrenotazione = (String)request.getAttribute("messagePrenotazione");%>
<body>
<%if (messagePrenotazione!=null ){%>
<%=messagePrenotazione %>
<%} %>
<body>
<div class="wrap">
<c:set var="ns1" scope="page" value="${requestScope.ns}" />
<c:set var= "ts1" scope="page" value="${requestScope.ts}"/>


<form action="Prenota" method="post">
Data Check-in: <input id="datefield1" type="date" min="2020-01-01" name="dataInizio" onclick="fieldValidationDate()"></input>
<br></br>
Data Check-out: <input id="datefield2" type="date" name="dataFine" min="2020-01-01" onclick="fieldValidationDate()">
<br></br>
Formula<select id="formula" name="formula" >
  <option value="BB">BB
  <option value="MEZZA_PENSIONE">mezza pensione
  <option value="PENSIONE_COMPLETA">pensione completa
</select>
<input type="hidden" name="nspar" value= "${ns1}"></input>
<input type="hidden" name="tspar" value= "${ts1}"></input>

<br></br>



<input type="submit" name="submit" class="button4">
</form>
</div>
	<%@include file="Footer.jsp"%>
</body>
</html>