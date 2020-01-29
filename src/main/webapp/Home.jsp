<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/intestazione.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta name="description" content="Hotel Gruppo2"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
  
   /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
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
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Immagini/SPA.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>La nostra SPA</h3>
        </div>      
      </div>

      <div class="item">
        <img src="Immagini/suite.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Le nostre suite</h3>
        </div>      
      </div>
      
          <div class="item">
        <img src="Immagini/facciata.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Le nostre suite</h3>
        </div>      
      </div>
    
    
          <div class="item">
        <img src="Immagini/hotel.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>La struttura</h3>
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

<h3><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.49499640968!2d9.193009915557978!3d45.47997597910125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c6c95ff3f03b%3A0xdafea375f82c057e!2sVia%20Marco%20Polo%2C%2020124%20Milano%20MI!5e0!3m2!1sit!2sit!4v1580294301221!5m2!1sit!2sit" width="100%" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe></h3>

</body>

<footer>
<%@include file="/fondopagina.jsp"%>
</footer>

</html>