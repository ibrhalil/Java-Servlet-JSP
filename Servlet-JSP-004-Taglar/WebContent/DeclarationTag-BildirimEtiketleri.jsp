<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration Tag (Bildiri Etiketleri)</title>
</head>
<body>

	<%!
		//Değişkenleri ve Metotları html sayfasında tanımlamamızı sağlar
		//<%! ile başlıyorsa bu bir declaration tagtir.
		String isim = "Halil";
	
		String selamla(String deger)
		{
			return "Merhaba "+deger;
		}
		
	%>
	
	<%out.print(selamla(isim));%>
	
</body>
</html>