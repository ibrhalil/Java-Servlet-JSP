<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cevap sayfası</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		//gelen istekleri türkçe desteklemesinde sıkıntı oluşturuyor !!
	%>
	
	<jsp:useBean id="human1" class="veri.Person"></jsp:useBean>
	
	<jsp:setProperty property="name" name="human1"/>
	<jsp:setProperty property="lastName" name="human1"/>
	<jsp:setProperty property="mail" name="human1"/>
	<jsp:setProperty property="sex" name="human1"/>
	<jsp:setProperty property="message" name="human1"/>
	<%-- setProperty bizim yerimize requsetleri alacak ve human1 nesnesine atacaktır --%>
	
	<h2>jsp tag ile veri yazdırımı</h2>
	
	<%=human1.getName() %>
	<br>
	
	<%=human1.getLastName() %>
	<br>
	
	<%=human1.getMail() %>
	<br>
	
	<%=human1.getSex() %>
	<br>
	
	<%=human1.getMessage() %>
	<br>
	
	<hr>
	
	<h2>JSTL ile veri yazdırım</h2>
	
	<c:set var="adiniz" value="<%=human1.getName() %>"></c:set>
	<%-- adiniz adında bir değişken oluşturmamızı sağlıyor --%>
	
	<c:out value="ekrana Gösterecek : ${adiniz}"></c:out>
	<%--oluşturulan değişkeni ekrana yazdırmakta --%>
	<br>
	<!-- veya --> 
	
	${adiniz}
	<%-- set ile oluşturulan değişkeni kullanma --%>
	
	<c:remove var="adiniz"/>
	<%-- oluşturulan değişkeni sildik --%>
	
	${adiniz}
	<!-- değişken silindiği için ekranda gözükmedi -->
	
	<br>
	
	<c:if test="${adiniz==null}">
		değişken adiniz bulunamadı !
	</c:if>
	
	
	<br>
	
	
	<c:if test="${adiniz!=null}">
		hoş geldin ${adiniz}
	</c:if>
	<%-- adiniz değişkeni silinmemiş olsaydı ekrana yazacaktı  --%>
	
	
	<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%-- bu kütüphane ile tag değişkenlerini fonksiyonlar çağırıp işlem yapabilmekteyiz --%>
	
	<c:set var="posta" value="<%=human1.getMail() %>"></c:set>
	
	<c:if test="${fn:length(fn:trim(posta))>0 }">
		${posta}
	</c:if>
	
	
	<br>
	${fn:toUpperCase(posta)}
	
	
	<br>
	<c:set var="cinsiyet" value="<%=human1.getSex()%>"></c:set>
	${cinsiyet }
	<c:if test="${fn:toLowerCase(cinsiyet)=='erkek'}">
		<h3 style="color: red;">Askerliği yaptın mı birader :D</h3>
	</c:if>
	
	
	
	<br>
	<c:choose>
		<c:when test="${cinsiyet =='kadın' }">
			<h3>kadınlar askere gidemez</h3>
		</c:when>
		
		<c:when test="${cinsiyet =='erkek' }">
			<h3>erkekler ağlamaz</h3>
		</c:when>
		
		<c:otherwise>
			hiç bir değerle uyuşmadı
		</c:otherwise>
	</c:choose>
	
</body>
</html>