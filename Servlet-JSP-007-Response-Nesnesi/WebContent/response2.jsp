<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response cookie kullanma</title>
</head>
<body>
		<h1>Cookie Nesneleri</h1>
		<h3><a href="response1.jsp">Response1.jsp</a></h3>
	<%
		//response sayfası çalıştı cookie oluşturdu ve bu sayfaya yönlendirildi.
		
		
		Cookie[] bulunanaKurabiyeler = request.getCookies();
		//response gelen cookie leri dizi olarak sakladık
		
		for(Cookie kurabiye : bulunanaKurabiyeler)
		{
			out.print("Name : "+kurabiye.getName()+"<br>Value : "+kurabiye.getValue()+"<hr>");
		}
		
	%> 
</body>
</html>