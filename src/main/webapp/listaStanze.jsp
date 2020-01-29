<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import= "java.util.ArrayList" %>
<%@ page import= "it.accenture.model.Stanza" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp"%>

<body>

<% ArrayList<Stanza> stanze = (ArrayList<Stanza>)session.getAttribute("stanze");
pageContext.setAttribute("listaStanze", stanze);
%>
<c:forEach var="ling" items= "${listaStanze}">

<tr>
<td><c:out value ="${ling}"> </c:out></td>
</tr>
</c:forEach>



<%@include file="Footer.jsp"%> 
</body>
</html>
