<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/intestazione.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta name="description" content="Hotel Gruppo2"/>
</head>


<body>
<div align="center">
</div>
<p>Benvenuto</p>

<div class="container">
  <h2>La nostra struttura</h2>
  <p>Click sulle immagini per ingrandire.</p>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="Immagini/SPA.jpg" target="_blank">
          <img src="Immagini/SPA.jpg" alt="SPA" style="width:100%">
          <div class="caption">
            <p>La nostra SPA.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/nature.jpg" target="_blank">
          <img src="/w3images/nature.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/fjords.jpg" target="_blank">
          <img src="/w3images/fjords.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

<h3><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.49499640968!2d9.193009915557978!3d45.47997597910125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c6c95ff3f03b%3A0xdafea375f82c057e!2sVia%20Marco%20Polo%2C%2020124%20Milano%20MI!5e0!3m2!1sit!2sit!4v1580294301221!5m2!1sit!2sit" width="1920" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe></h3>

<footer>
<%@include file="/fondopagina.jsp"%>
</footer>
</html>