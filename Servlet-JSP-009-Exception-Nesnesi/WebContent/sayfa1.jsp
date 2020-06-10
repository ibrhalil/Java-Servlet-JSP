<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page errorPage="hataSayfasi.jsp" %>
<%-- oluşan bir hata durumunda yönlendirilecek hata sayfası belirtiriz   --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hatalı sayfa</title>
</head>
<body>
	<%
		String metin = null;
		metin.charAt(10);
		//hatalı kısım
	%>
	
	<h1>bu sayfa görüntülenemeyecek</h1>
</body>
</html>