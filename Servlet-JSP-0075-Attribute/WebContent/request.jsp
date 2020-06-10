<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>request.jsp</title>
</head>
<body>
	<%=request.getAttribute("isim") %>
	<br>
	<%=request.getAttribute("cinsiyet") %>
</body>
</html>