<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<link rel="stylesheet" type="text/css" href="stile.css">


<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="Home.jsp">HOME</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">About us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">altro link</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown" name="tipoStanza" >
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Tipi stanze
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="listaStanze" value= "standard" >Standard</a>
        <a class="dropdown-item" href="listaStanze" value= "family">Family</a>
        <a class="dropdown-item" href="listaStanze" value= "business">Business</a>
          <a class="dropdown-item" href="listaStanze" value= "suite">Suite</a>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="listaPrenotazioni.jsp">Lista prenotazioni</a>
    </li>
    
    <li class="nav-login">
      <a class="nav-link" href="login.jsp">LOGIN</a>
    </li>
  </ul>
</nav>
<br>
  

</body>
</html>