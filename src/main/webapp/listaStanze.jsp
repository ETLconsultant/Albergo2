<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Stanze</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">



<style>

body {
background-color: #e8eaf6;
}

button[type=submit] {
  width: 50 px;
  background-color: #2979ff;
  color: white;
  padding: 8px 12px;
  margin: 8px 15px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-family:verdana;
}

table {
  padding: 20px;
  width: 100px;
 
}

td, th {
  border: 3px solid #75a7ff;
  text-align: left;
  font-family:verdana;
  padding: 22px;
  background-color: #b6b8c3;
}
td{
	width : 20px;
	}

tr:nth-child(even) {
  background-color:#f0fff6;
  font-family:verdana;
}

#titolo {
	font-family:verdana;
	padding: 10px 15px;
	font-size: 17px;
}

</style>
</head>
<body>



	
<div class="table">
		<table>
		
				<tr>
						<td><%="Numero stanza"%>
						<td><%="tipo stanza"%>
						<td><%="Posti letto"%>
						<td><%="Prezzo notte"%>
						<td><%="disponibilita"%>
			<c:forEach var="lista" items="${requestScope.listaStanze}">
				<br>
				

					
					<tr>
						<td><c:out value= "${lista.numeroStanza}">
							</c:out>
							</td>
						<td><c:out value= "${ lista.tipoStanza}">
							</c:out>
							</td>
						<td><c:out value= "${lista.postiLetto}">
							</c:out>
							</td>
						<td><c:out value= "${lista.prezzoNotte}">
							</c:out>
							</td>
							<td>
								<form action="Prenota">
								 <button type="submit" name="button" value= "${lista.numeroStanza}" > Prenota</button>
							</form>
							
							</td>
							
						<tr>
				
			</c:forEach>

		</table>

	</div>




</body>
</html>