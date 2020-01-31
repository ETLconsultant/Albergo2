
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accedi</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>

<style>
body{
background-image:url('Immagini/login.jpg');
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
  position: absolut;
  orizontal-align:middle;
  vertical-align:middle;
  
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
	<%
			String messaggio = (String) request.getAttribute("messaggio");
			if (messaggio != null) {
				out.println(messaggio);
			}
		%>
		<br>
		<form name="FormLogin" action="login" method="post" onsubmit="return validateLogin()">
			<p>
				<b>Inserisci i tuoi dati:</b>
			</p>
			<br>
			<p>
				Username: <input type="text" name="username" size="16 px" >
			<p class="messaggi" id="username"></p>
			</p>
			<p>
				Password: <input type="password" name="password" size="16 px">
			<p class="messaggi" id="password"></p>
			</p>
			<input type="submit" name="bottone" value="Accedi">
			
			<p>
			Non sei registrato? <a href="registrazione.jsp"> Registrati< </a>
			</p>
			
			Torna alla <a href="Home.jsp"> Home </a> 

		</form>
		<br>
		
	</div>
</body>
</html>