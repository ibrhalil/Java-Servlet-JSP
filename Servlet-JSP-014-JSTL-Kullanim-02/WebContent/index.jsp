<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hata Oluşturma ve Sayfa Yönlendirmesi</title>
</head>
<body>
	<h1>Hata Oluşturma ve Sayfa Yönlendirmesi</h1>
	
	<c:catch var="hata">
		
		
		
		<%
			Date zaman=null;
			out.print(zaman.getDate());
		%>
		<%-- hata oluşturacak kod --%>
		
		<%=12/0 %>
		<%-- hata oluşturacak kod 2 --%>
	</c:catch>
	
	<c:if test="${hata!=null}">
		<c:out value="${hata}"></c:out>
		<%--hata varsa hatanın türünü ekrana yazdırma --%>
		
		
		
		<c:redirect url="hataSayfasi.jsp?hataTuru=${hata}"></c:redirect>
		<%--sayfa yönlendirme --%>
	</c:if>
	
	
	
</body>
</html>