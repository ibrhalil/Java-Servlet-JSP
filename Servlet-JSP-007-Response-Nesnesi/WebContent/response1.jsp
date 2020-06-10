<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response Nesnesinin Kullanımı</title>
</head>
<body>
	<%
		Cookie kurabiye = new Cookie("Kurabiye_Nesnesi_Name","Kurabiye_Nesnesi_Value");
		//cookie oluşturduk
		
		kurabiye.setMaxAge(30);
		//yaşam süresini belirttik
		
		response.addCookie(kurabiye);
		//response nesnesine ekledik
		
		response.sendRedirect("response2.jsp");
		//response2.jsp sayfasına yönlendirme yaptık
		
	%>
</body>
</html>