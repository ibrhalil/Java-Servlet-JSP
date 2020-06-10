<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Tag - Emir Etiketleri</title>
</head>
<body>
	<%-- 
	<%@ %>
	
	<%@include %>
	<%@page %>
	<%@taglib %>
	
	
	
	<%@page errorPage="" %>
	<%@page extends="" %>
	<%@page import="" %>
	<%@page language="java" %>
	<%@page session="true" %>
	
	 --%>
	 
	 
	<%@page import="java.math.*" %>
	<%=Math.PI%>
	
	<br>
	<hr>
	<hr>
	<%@include file="ExpressionTag-IfadeEtiketleri.jsp" %>
	<br>
	siteye bir html dosya dahile etmemizi sağlar
	<hr><hr>
	
	<%--
		 <%@ taglib prefix="asd" uri="asdasd" %>
		 yazılımcının işini kolaylaştırmak amaçlı yazılmıştır
		 
		 <%@ taglib prefix="c" uri="html.asdadfafgg.com"%>
		 c. sonrası verilen ....
	 --%>
	
</body>
</html>