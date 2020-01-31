<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/stile.css" type="text/css">
<title>Chi Siamo</title>
<%@include file="Header.jsp"%>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 50;
  font-family: Arial;
}

/* The grid: Four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
}

/* Style the images inside the grid */
.column img {
  opacity: 0.8; 
  cursor: pointer; 
}

.column img:hover {
  opacity: 1;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The expanding image container */
.container {
  position: relative;
  display: none;
}

/* Expanding image text */
#imgtext {
  position: absolute;
  bottom: 15px;
  left: 15px;
  color: white;
  font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
  position: absolute;
  top: 10px;
  right: 15px;
  color: white;
  font-size: 35px;
  cursor: pointer;
}
</style>
</head>
<body>
<div align="center">
<div class="container text-center">
  <h3>JAVANI GRUPPO...MISTO</h3>
  <p><em>Nel dubbio...Pulla!</em></p>
  <br>
  </div>
  
  <div class="row">
  <div class="column">
    <img src="image/gruppo.jpg" alt="Group" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="image/mela.jpg" alt="Apple" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="image/mela2.jpg" alt="Apple" style="width:100%" onclick="myFunction(this);">
  </div>
</div>


<div class="container">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<br> <br> <br> 
 <h2>Frasi Celebri</h2> 
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
</div>
<script> 
function myFunction(imgs) {
	  var expandImg = document.getElementById("expandedImg");
	  var imgText = document.getElementById("imgtext");
	  expandImg.src = imgs.src;
	  imgText.innerHTML = imgs.alt;
	  expandImg.parentElement.style.display = "block";
	}
	
</script>
<%@include file="Footer.jsp"%>
</body>
</html>