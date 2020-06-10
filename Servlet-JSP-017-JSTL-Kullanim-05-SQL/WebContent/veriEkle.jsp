<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%--JSTL için  sql kütüphanesini kullanmak için hazır --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
	%>
	
	<c:catch var="hata">
	
		<sql:setDataSource var="baglanti"
						   driver="com.mysql.jdbc.Driver"
						   url="jdbc:mysql://localhost/testdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"
						   user="root"
						   password="toor"/>
						   
		<%-- veri tabanı bağlantı parametreleri --%>
		<%-- ?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey --->  bağlantı sırasında oluşan karakter sorununa bir çözüm --%>
		<%-- ?useUnicode=yes&characterEncoding=UTF-8 --%>
		
		<c:if test="${baglanti!=null}">
	
			<c:set var="ad" value="${param.kul_adi}"></c:set>
			<c:set var="soyad" value="${param.kul_soyadi}"></c:set>
			<c:set var="cinsiyet" value="${param.kul_cinsiyet}"></c:set>
			<c:set var="tarih" value="<%=new Date()%>"></c:set>
			
			<sql:transaction dataSource="${baglanti}">
			<%-- veri tabanı bağlanma ve işlem yapmada bize hata ve aynı anda oluşan isteklerde güvenliği sağlıyor --%>
			
			<%-- <sql:update dataSource="${baglanti}"--%>
				<sql:update>
							
					INSERT INTO personel (ad,soyad,cinsiyet,kayit_tarih) VALUES(?,?,?,?);
					
					<sql:param value="${ad}"></sql:param>
					<sql:param value="${soyad}"></sql:param>
					<sql:param value="${cinsiyet}"></sql:param>
					<sql:param value="${tarih}"></sql:param>
				</sql:update>
				
			</sql:transaction>
			
		</c:if>
	
	</c:catch>
	
	<c:if test="${hata!=null }">
		<h1 style="color: red;">Hata Oluştu</h1>
		<h2>${hata}</h2>
	</c:if>
	<c:if test="${hata==null}">
		<%
			response.sendRedirect("sayfa1.jsp?durum=true");
		%>
	</c:if>

</body>
</html>