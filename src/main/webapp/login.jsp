
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
background-image:url('Immagini/hotel2.jpg');
background-repeat: no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}


@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);

body {
  background: #00000;
  padding: 40px;
  font-family: "Open Sans Condensed", sans-serif;
}

#bg {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: url(http://lorempixel.com/800/500/nature) no-repeat center center fixed;
  background-size: cover;
  -webkit-filter: blur(5px);    
}

form {
  position: relative;
  width: 250px;
  margin: 0 auto;
  padding: 20px 22px;
  border: 1px solid;
  border-top-color: rgba(255,255,255,.8);
  border-left-color: rgba(255,255,255,.8);
  border-bottom-color: rgba(60,60,60,.8);
  border-right-color: rgba(60,60,60,.8);
}

form input, form button {
  width: 212px;
  border: 1px solid;
  border-bottom-color: rgba(255,255,255,.8);
  border-right-color: rgba(60,60,60,.35);
  border-top-color: rgba(60,60,60,.35);
  border-left-color: rgba(80,80,80,.45);
  background-color: rgba(0,0,0,.6);
  background-repeat: no-repeat;
  padding: 8px 24px 8px 10px;
  font: bold .875em/1.25em "Open Sans Condensed", sans-serif;
  letter-spacing: .075em;
  color: #fff;
  text-shadow: 0 1px 0 rgba(0,0,0,.1);
  margin-bottom: 19px;
}

form input:focus { background-color: rgba(0,0,0,.4); }

form input.email {
  background-image: url('Immagini/hotel2.jpg');
  background-position: 220px 10px;
}

form input.pass {
  background-image: url('Immagini/hotel2.jpg');
  background-position: 223px 8px
}

::-webkit-input-placeholder { color: #ccc; text-transform: uppercase; }
::-moz-placeholder { color: #ccc; text-transform: uppercase; }
:-ms-input-placeholder { color: #ccc; text-transform: uppercase; }

form button[type=submit] {
  width: 248px;
  margin-bottom: 0;
  color: #3f898a;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  text-transform: uppercase;
  background: #c75b73;
  border-top-color: #b3ad3e;
  border-left-color: #b3ad3e;
  border-bottom-color: #b3ad3e;
  border-right-color: #b3ad3e;
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