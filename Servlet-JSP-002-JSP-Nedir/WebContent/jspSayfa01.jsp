<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Sayfası 01</title>
</head>
<body>
	<h1>Servlet 'den gelen yönlendirme ile çalışan jsp sayfasıdır.</h1>
	<hr>
	<form action="KisiEkle" method="post">
		<input type="text" name="kisiAd" required>
		<input type="submit">
	</form>

	<%--
		JSP -->	html sayfasının içerisine java kodları yazabildiğimiz bir teknolojidir.
	--%>
</body>
</html>