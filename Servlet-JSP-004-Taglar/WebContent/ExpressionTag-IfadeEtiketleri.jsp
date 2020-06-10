<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Tag - İfade Etiketleri</title>
</head>
<body>
	<%="bu bir ifade Etiketidir." %>
	
	
	<% int sayi = 5; %>
	
	<!-- 
		ifade etiketleri içerisindeki yazılı olanı direk web sayfasına yazdırır.
	 -->
	 <br>
	 <%out.print(sayi); %>
	 <br>
	 <%=sayi %>
	 
</body>
</html>