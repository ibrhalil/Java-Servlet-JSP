<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kendi Sınıfımızdan useBean ile bir nesne üretmek</title>
</head>
<body>

	<jsp:useBean id="kisi1" class="veriler.Kisi"></jsp:useBean>

	<%
		kisi1.setAd("Halil");
		kisi1.setSoyad("Aydın");
		kisi1.setYas(24);
	%>
	
	<%=kisi1 %>
	
	<hr>
	
	<jsp:useBean id="kisi2" class="veriler.Kisi"></jsp:useBean>
	
	<jsp:setProperty name="kisi2" property="ad"/>
	<%--
		property de yazılan deger class taki değişken ile aynı olmalıdır		yani;
		
		class değişkenAd == setProperty property == request getParameter == form input:name
	 --%>
	<jsp:setProperty name="kisi2" property="soyad"/>
	<jsp:setProperty name="kisi2" property="yas"/>
	
	<%-- 
		request isteklerindeki parametre degeri property ile aynı olursa gelen paramatreyi kisi nesnesine otomatik ekleyecektir.
	--%>
	
	<%=kisi2 %>
	
	<hr>
	
	
	
	<jsp:useBean id="kisi3" class="veriler.Kisi"></jsp:useBean>
	
	<b>Resquest den gelen 'ad' parametresinin degeri :</b><%=request.getParameter("ad") %>
	<br>
	<b>kisi3 classı yardımıyla setProperty nesnesindeki property="ad" degeri :</b><jsp:setProperty name="kisi3" property="ad"/><%=kisi3.getAd() %>
	
</body>
</html>