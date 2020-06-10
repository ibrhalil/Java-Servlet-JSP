<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>değişken :</b>
	<c:set var="sayi1" value="12.34"></c:set>
	<c:out value="${sayi1}"></c:out>
	
	
	<hr>
	<br>
	
	
	<b>fmt:parseNumber :</b>
	<fmt:parseNumber var="sayi2" type="number" value="${sayi1}"></fmt:parseNumber>
	<c:out value="${sayi2}"></c:out>
	
	<br>
	<b>fmt:parseNumber :</b>
	<fmt:parseNumber var="sayi3" integerOnly="true" value="${sayi2}"></fmt:parseNumber>
	<c:out value="${sayi3}"></c:out>
	
	
	<hr>
	<br>
	
	
	<b>fmt:formatNumber - type="currency" (local) :</b>
	<fmt:formatNumber var="sayi4" type="currency" value="${sayi3}" ></fmt:formatNumber>
	<c:out value="${sayi4}"></c:out>
	<%-- locale de bulunulan yerin para birimini gösterir --%>
	<br>
	
	<b>fmt:formatNumber - type="currency" (en_GB) :</b>
	<fmt:setLocale value="en_GB"/>
	<fmt:formatNumber var="sayi5" type="currency" value="${sayi1}" ></fmt:formatNumber>
	<c:out value="${sayi5}"></c:out>
	
	<br>
	<b>fmt:formatNumber - type="currency" (en_US) :</b>
	<fmt:setLocale value="en_US"/>
	<fmt:formatNumber var="sayi6" type="currency" value="${sayi2}" ></fmt:formatNumber>
	<c:out value="${sayi6}"></c:out>
	
	<br>
	<b>fmt:formatNumber - type="currency" (tr_TR) :</b>
	<fmt:setLocale value="tr_TR"/>
	<fmt:formatNumber var="sayi7" type="currency" value="95" ></fmt:formatNumber>
	<c:out value="${sayi7}"></c:out>
	
	
	<br>
	<b>fmt:formatNumber - type="percent" :</b>
	<fmt:formatNumber var="sayi8" type="percent" value="12"></fmt:formatNumber>
	<c:out value="${sayi8}"></c:out>
	
	<hr>
	<br>
	
	<c:set var="tarih1" value="23-04-2002"></c:set>
	<fmt:parseDate var="tarih2" value="${tarih1}" pattern="dd-MM-yyyy"></fmt:parseDate>
	<c:out value="${tarih1} = ${tarih2}"></c:out>
	<%-- tarih değişkenine çevirme --%>
	
	<hr>
	<br>
	<%@page import="java.util.Date"%>
	<c:set var="tarih3" value="<%=new Date()%>"></c:set>
	
	<b>formatDate - type="both" :</b><fmt:formatDate value="${tarih3}" type="both"/><br>
	<b>formatDate - type="date" :</b><fmt:formatDate value="${tarih3}" type="date"/><br>
	<b>formatDate - type="both" dateStyle="short" :</b><fmt:formatDate value="${tarih3}" type="both" dateStyle="short"/><br>
	<b>formatDate - type="both" dateStyle="long":</b><fmt:formatDate value="${tarih3}" type="both" dateStyle="long"/><br>
	<b>formatDate - type="both" dateStyle="medium" :</b><fmt:formatDate value="${tarih3}" type="both" dateStyle="medium"/><br>
	
	<br><br>
	
	<fmt:formatDate value="${tarih3}" type="both" dateStyle="long" timeStyle="short"/>
	<br>
	<fmt:formatDate value="${tarih3}" type="both" dateStyle="short" timeStyle="long"/>
</body>
</html>