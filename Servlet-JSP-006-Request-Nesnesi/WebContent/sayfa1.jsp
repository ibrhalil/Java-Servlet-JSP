<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sayfa1</title>
</head>
<body>
	<h1>Sayfa1</h1>
	<% String metin = "bu yazı sayfa1 de yazılmış bir metin içeriğidir." ;%>
	
	<%=metin%>
	
	<%request.setAttribute("bilgi", metin); %>
	
	<hr>
	<%@ include file="sayfa2.jsp" %>
</body>
</html>