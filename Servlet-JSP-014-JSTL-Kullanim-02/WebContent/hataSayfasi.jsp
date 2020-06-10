<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hata var</title>
</head>
<body>
	<h1 style="color: red;">bir hata var !</h1>
	
	<c:out value="${param.hataTuru}"></c:out>
	<%-- ekrana parametreden gelen hatayı yazmakta --%>
	
	
	
	
	<c:set var="hataMetni" value="${param.hataTuru}"></c:set>
	<c:if test="${fn:contains(hataMetni,'by zero')}">
		<h3 style="color:purple;">Sıfıra Bölme hatası Algılandı</h3>
	</c:if>
	
	
	
	<c:if test="${fn:contains(hataMetni,'NullPointerException')}">
		<h3 style="color:purple;">Boş Değer kullanılmaya Çalışıldı </h3>
	</c:if>
	
</body>
</html>