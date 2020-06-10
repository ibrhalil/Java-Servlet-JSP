<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean Kullanimi</title>
</head>
<body>

	<jsp:useBean id="tarih" class="java.util.Date"></jsp:useBean>
	<%-- 
		id oluşturdugumuz bean nesnesini kullanabilmemiz için verilen degerdir. 
		class ise kullanılacak java classının yolunu belitmektedir
	--%>
	
	<%=tarih%>
	<%--
		ekrana tarih adında bir Date nesnesi göstermekteyiz.
	 --%>
	
</body>
</html>