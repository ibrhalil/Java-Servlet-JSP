<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL ile değişken Dönüşümleri</title>
</head>
<body>
	<h1>JSTL ile değişken Dönüşümleri</h1>
	
	<c:set var="numara" value="15"></c:set>
	<c:if test="${numara>10}">
		<c:out value="${numara} 10'dan büyüktür :D"></c:out>
	</c:if>
	
	
	<br>
	<fmt:parseNumber var="sayi" value="${numara}"></fmt:parseNumber>
	<%-- String to int cast --%>
	<c:if test="${sayi>10}">
		<c:out value="${sayi} 10'dan büyüktür :D"></c:out>
	</c:if>
	
	
	
	<hr>
	<c:set var="numara2" value="5         "></c:set>
	<c:if test="${numara2>'10'}">
		<c:out value="${numara2} 10'dan büyüktür :D"></c:out>
	</c:if>
	
</body>
</html>