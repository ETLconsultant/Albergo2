<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page='intestazione.jsp' />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Home </title>
<meta name="description" content="Hotel Gruppo2"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

*{
margin: 0;
padding: 0;
box-sizing: border-box;
}
.carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
      max-height:500px;
  }
  
   /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  
  body{
background-image:url('Immagini/login.jpg');
background-repeat: no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}
</style>

</head>

<body>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Immagini/bellaggio.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>La struttura</h3>
        </div>      
      </div>
      
        <div class="item">
        <img src="Immagini/SPA.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>La nostra spa</h3>
        </div>      
      </div>

      <div class="item">
        <img src="Immagini/suite.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Le nostre suite</h3>
        </div>      
      </div>
      
          <div class="item">
        <img src="Immagini/Le nostre piscine.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Le nostre piscine</h3>
        </div>      
      </div>
    
    
          <div class="item">
        <img src="Immagini/investimenti.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Investimenti sicuri</h3>
        </div>      
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


</body>

<footer>
<%@include file="/fondopagina.jsp"%>
</footer>

</html>