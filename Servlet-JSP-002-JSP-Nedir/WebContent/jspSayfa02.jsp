<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hoş Geldiniz</title>
</head>
<body>
	<h1>
		<%=request.getAttribute("gelenAdDegeri").toString().toUpperCase()%> Hoş Geldin.
	</h1> 
	<form action="Yonlendir">
		<input type="submit" value="Geri Git">
	</form>
</body>
</html>