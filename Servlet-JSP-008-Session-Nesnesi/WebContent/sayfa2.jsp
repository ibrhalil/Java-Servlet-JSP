<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Oluşturma </title>
</head>
<body>
	<!-- request.getParameter ile sayfa1 den gönderilen veriyi aldık -->
	<%=request.getParameter("ad") %>
	<hr>
	<%
		session.setAttribute("kullaniciAdi", request.getParameter("ad"));
		//bir oturum nesnesine kullaniciAdi adında bir öz nitelik tanımladık
		
		
	%>
	<a href="sayfa3.jsp">Sayfa3 Git</a>
</body>
</html>