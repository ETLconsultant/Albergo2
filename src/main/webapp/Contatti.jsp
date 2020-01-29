<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="Header.jsp"%>
<meta charset="ISO-8859-1">
<title>Contatti</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/stile.css" type="text/css">

<title>Contatti</title>
</head>
<body>
<!-- Container (Contact Section) -->
<div class="container-fluid bg-grey">
  <h2 class="text-center">Contatti</h2>
  <div class="row"> 
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Javani Resort</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> javani@gruppo1.it</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Invia</button>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="google-maps" >
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2796.5253539961473!2d9.225212215027524!3d45.49950207910138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c71b08aa44cd%3A0x6482f12f79a92325!2sVia%20Valtorta%2C%2048%2C%2020127%20Milano%20MI!5e0!3m2!1sit!2sit!4v1580223664672!5m2!1sit!2sit" width="400" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
</div>


	<%@include file="Footer.jsp"%>
</body>
</html>