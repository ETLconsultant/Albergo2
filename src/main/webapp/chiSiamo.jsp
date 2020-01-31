<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/stile.css" type="text/css">
<title>Chi Siamo</title>
<%@include file="Header.jsp"%>
</head>
<body>
<div class="container text-center">
  <h3>JAVANI GRUPPO...MISTO</h3>
  <p><em>Nel dubbio...Pulla!</em></p>
  <br>
  <div class="row">
    <div class="col-sm-4">
  
      <img src="image/scimmie.jpg" alt="Random Name" width="255" height="255" data-toggle="popover" title="Descrizione"
				data-content="Giorgio,Marco,Gianfilippo">
    </div>
    <div class="col-sm-4">

      <img src="image/gruppo.jpg" alt="Random Name" width="255" height="255"data-toggle="popover" title="Descrizione"
				data-content="Apericena da Nhero">
    </div>
    <div class="col-sm-4">

      <img src="image/mela.jpg" alt="Random Name" width="255" height="255"data-toggle="popover" title="Descrizione"
				data-content="Luciana,Nicola,Sara,Davide,Giulia&Silvia">
    </div>
  </div>
</div>
<br> <br> <br> 
 <div align="center"> <h2>Frasi Celebri</h2> </div>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"Accettate i buoni pasto?"<br><span>Nicola Santagata</span></h4>
      </div>
      <div class="item">
        <h4>"Raga, pullate"<br><span>Tutti</span></h4>
      </div>
      <div class="item">
        <h4>"Che bello, il progetto funziona alla grande e al primo colpo!"<br><span>Nessuno</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<script> 
$(document).ready(function(){ 
    $('[data-toggle="popover"]').popover();    
}); 
</script>
<%@include file="Footer.jsp"%>
</body>
</html>