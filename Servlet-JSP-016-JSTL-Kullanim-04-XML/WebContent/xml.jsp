<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%-- XML için jstl kütüpanesinden gerekli sınıfları projemize dahil ettik --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL ile XML Örnekleri</h1>
	
	<c:import var="xmlVeri" url="kisiler.xml"></c:import>
	
	<x:parse var="veri" doc="${xmlVeri}"></x:parse>
	<%--xml dosyasından veriyi aldık --%>
	
	
	<x:out select="$veri"/>
	
	<hr>
	
	
	<x:out select="$veri/kisiler/kisi/ad"/><br>
	<x:out select="$veri/kisiler/kisi/soyad"/><br>
	<x:out select="$veri/kisiler/kisi/yas"/><br>
	
	<hr>
	
	<x:forEach var="secili" select="$veri/kisiler/kisi">
		<x:out select="$secili/ad"/> - 
		<x:out select="$secili/soyad"/> - 
		<x:out select="$secili/yas"/><br>
	</x:forEach>
	
	<hr>
	<h3 style="color: green;">küçük bir hatırlatma</h3>
	<c:set var="degisken">halil</c:set>
	<c:out value="${degisken}"></c:out>
	
	<hr>
	
	<c:set var="xmlVeri2">
		<kisiler>
			<kisi>
				<ad>ismail</ad>
				<soyad>küçük</soyad>
				<yas>42</yas>
			</kisi>
			<kisi>
				<ad>yakup</ad>
				<soyad>sapmaz</soyad>
				<yas>63</yas>
			</kisi>
			<kisi>
				<ad>murat</ad>
				<soyad>maharatlı</soyad>
				<yas>30</yas>
			</kisi>
			<kisi>
				<ad>gizem</ad>
				<soyad>nur</soyad>
				<yas>25</yas>
			</kisi>
		</kisiler>
	</c:set>
	
	
	<c:out value="${xmlVeri2}"></c:out>
	<hr><hr>
	
	<x:parse var="veri2" xml="${xmlVeri2}"></x:parse>
	<%-- xml attribute sayfada var olan değişkeni parse etmek için --%>
	
	<x:out select="$veri2/kisiler/kisi/ad"/><br>
	
	<br>
	<x:out select="$veri2/kisiler/kisi[2]/ad"/><br>
	<x:out select="$veri2/kisiler/kisi[2]/soyad"/><br>
	<x:out select="$veri2/kisiler/kisi[2]/yas"/><br>
	
	<hr>
	<x:forEach var="deger" select="$veri2/kisiler/kisi">
		<x:if select="$deger/yas >= 30">
			<x:out select="$deger/ad"/> , 
		</x:if>
	</x:forEach>
	
	<hr>
	
</body>
</html>