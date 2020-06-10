<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request ile gelen parametreleri useBean ve setProperty ile kullanımı</h1>
	
	<jsp:useBean id="insan1" class="veriler.Kisi"></jsp:useBean>
	<%-- class ile bağlantı kuruldu --%>
	
	<jsp:setProperty property="*" name="insan1"/>
	<%-- class içeirsindeki tüm degişkenleri kullanabilmek için kısa yol (property 'e tek tek yazmaktan kurtarıyor)--%>
	
	<b>Ad : </b><%=insan1.getAd() %><br>
	<b>Soyad : </b><%=insan1.getSoyad() %><br>
	<b>Yas : </b><%=insan1.getYas() %><br>
	
	<mark>class değişkenAd == setProperty property == request getParameter == form input:name</mark>
</body>
</html>