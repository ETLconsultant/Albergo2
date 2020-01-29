<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${requestScope.listaStanze}" var="lista">
<c:output lista>
</c:output>
</c:forEach>



</body>
</html>