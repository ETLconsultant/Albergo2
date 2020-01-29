<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>


*{
margin: 0;
padding : 0;
box-sizing: border-box;
}


/* Place the navbar at the bottom of the page, and make it stick */
.navbar_footer {
  background-color: #333;
  overflow: hidden;
  position: fixed;
  bottom: 0;
  width: 100%;
}

/* Style the links inside the navigation bar */
.navbar_footer a, p {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}


/* Change the color of links on hover */
.navbar_footer a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the class active */
.navbar_footer a.active {

}


</style>

</head>
<body>


	<div class="navbar_footer">
		<a href="#" class="active">Privacy</a>
		<p>tel.(+39 453676586769)</p>
		<p>Email: gruppo2@gruppo2.com</p>
	</div>

</body>
</html>