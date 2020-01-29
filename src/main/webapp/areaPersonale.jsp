<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head>  
<%@include file="Header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="css/stile.css" type="text/css">
</head><% String messageArea = (String)session.getAttribute("messageArea");%>
<body>


<%if (messageArea!=null ){%>
<%=messageArea %>
<%} %>


<p>Da qui puoi modificare i tuoi dati o cancellare il tuo account. Seleziona l'operazione che vuoi effettuare: </p>

<div>
<a href="updateDati.jsp">
<input type ="button"  name = "modificare" value ="Modifica Dati">
</a>
</div>


<form action = "ServletDelete" method="post">

<input type = "submit" name = "cancellare" value ="Cancella account">
</form>

<%@include file="Footer.jsp"%>
</body>
</html>