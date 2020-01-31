<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>

<style>
body{
background-image:url('Immagini/bellaggio.jpg');
background-repeat: no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}

form {

  width: 100 px;
  padding: 8px 8px;
  margin: 20px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  background-color: rgba(255,255,255,.5);
  
}

input[type=date], [type=formula]{
  width: 50 px;
  padding: 8px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  
}



input[type=submit] {
  width: 50 px;
  background-color: #2979ff;
  color: white;
  padding: 8px 10px;
  margin: 8px 0;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  
}


</style>

<style>.messaggi {
	color: red;
}</style>


</head>
<body>

<form name="FormReg" action="registrazione" method="post" onsubmit="return validateFormReg()">

	<table align="center">
	  
		<tr height="50" align="center">
			<th colspan="6" valign="middle">REGISTRAZIONE UTENTE</th>
		</tr>
<!-- <tr height="50" >
			<td width="20%">IdUtente</td>
			<td width="40%"><input type="text" id="idUtente" name="idUtente"></td>
			<td width="40%"><c:forEach items="${lista}" var="errore">
								<c:if test="${errore.campoValidato=='idUtente'}" > ${errore.descrizioneErrore}</c:if>
							</c:forEach>
		</tr> -->
		
		<tr height="50" >
			<td width="20%">Nome</td>
			<td width="40%"><input type="text" name="nome" onkeypress="return SoleLettere()">
				<p class="messaggi" id="anagrafici"></p>
			</td>
			<td width="40%"><c:forEach items="${lista}" var="errore">
								<c:if test="${errore.campoValidato=='nome'}" > ${errore.descrizioneErrore}</c:if>
							</c:forEach>
		</tr>
		
		<tr height="50" >
			<td width="20%">Username</td>
			<td width="40%"><input type="text" name="username">
			<p class="messaggi" id="username"></p></td>
			<td width="40%"><c:forEach items="${lista}" var="errore">
								<c:if test="${errore.campoValidato=='username'}" > ${errore.descrizioneErrore}</c:if>
							</c:forEach>
							
		</tr>
		<tr height="50" >
			<td width="20%">Password</td>
			<td width="40%"><input type="password" name="password">
			<p class="messaggi" id="password"></p></td>
			<td width="40%"><c:forEach items="${lista}" var="errore">
								<c:if test="${errore.campoValidato=='password'}" > ${errore.descrizioneErrore}</c:if>
							</c:forEach>
		</tr>
		
		<tr height="50">
			<th colspan="6" valign="middle"><input type="submit" value="registra" ><br></th>
		</tr>
	</table>
	
   </form>

</body>
</html>