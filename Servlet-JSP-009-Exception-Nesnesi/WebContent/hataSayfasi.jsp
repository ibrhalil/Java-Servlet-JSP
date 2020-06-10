<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page isErrorPage="true"%>
<%-- hata yakalayabilmesi için bu tanımlama yapılmalı  --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hata Yakalama</title>
</head>
<body>
	<b>hata :</b>
	<span><%=exception.toString() %></span>
	<%--oluşmuş olan hatayı gösteriyoruz --%>
</body>
</html>