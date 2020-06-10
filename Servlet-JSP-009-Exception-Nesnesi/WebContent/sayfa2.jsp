<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page errorPage="hataSayfasi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sifira Bölme hatası</title>
</head>
<body>
	<%
		int a=11,b=0;
		out.print(a/b);
	%>
</body>
</html>