<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sayfa2</title>
</head>
<body>
	<h1>Sayfa2</h1>
	<b>Yazılı metin : </b>
	<%=request.getAttribute("bilgi")%>
	<br>
	<a href="sayfa1.jsp">sayfa1</a>
	<br>
	<a href="sayfa2.jsp">sayfa2</a>
</body>
</html>