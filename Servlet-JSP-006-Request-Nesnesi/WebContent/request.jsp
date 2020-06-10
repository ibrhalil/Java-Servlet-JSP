<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Bilgileri</title>
</head>
<body>
	<h1>Request (istek) Bilgileri</h1>
	<hr>
	<b>Metot : </b>
	<span><%=request.getMethod()%></span>
	<hr>
	<b>URI : </b>
	<span><%=request.getRequestURI()%></span>
	<hr>
	<b>Protocol : </b>
	<span><%=request.getProtocol()%></span>
	<hr>
	<b>Path Info (Yol Bilgisi) : </b>
	<span><%=request.getPathInfo()%></span>
	<hr>
	<b>Path Translated (Yol Çevirisi) : </b>
	<span><%=request.getPathTranslated()%></span>
	<hr>
	<b>Query String (Sorgu Katarı) : </b>
	<span><%=request.getQueryString()%></span>
	<hr>
	<b>İçerik Uzunluğu : </b>
	<span><%=request.getContentLength()%></span>
	<hr>
	<b>İçerik Tipi : </b>
	<span><%=request.getContentType()%></span>
	<hr>
	<b>Server Name (Sunucu Adı) : </b>
	<span><%=request.getServerName()%></span>
	<hr>
	<b>Server port (Sunucu Liman) : </b>
	<span><%=request.getServerPort()%></span>
	<hr>
	<b>Remote User (Uzak Kullanıcı) : </b>
	<span><%=request.getRemoteUser()%></span>
	<hr>
	<b>Remote adress (Uzak Adres) : </b>
	<span><%=request.getRemoteAddr()%></span>
	<hr>
	<b>Remote Host (Uzak Sahip) : </b>
	<span><%=request.getRemoteHost()%></span>
	<hr>
	<b>Authorization Scheme (Yetkilendirme Tasarısı) : </b>
	<span><%=request.getAuthType()%></span>
</body>
</html>