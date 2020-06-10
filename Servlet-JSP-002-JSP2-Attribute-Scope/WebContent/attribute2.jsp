<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Attribute Gösterme</h1>
	
	<b>page Attribute : </b>
	<%=pageContext.getAttribute("sayi1") %>
	<br>
	<b>session Attribute : </b>
	<%=pageContext.getAttribute("sayi2") %>
	<br>
	<b>Application Attribute :</b>
	<%=pageContext.getAttribute("sayi3") %>
	<hr>
	
	
	<!-- sayi2 ve sayi3 görünmeyecektir (bakacagı yeri belirtmediğimizden) -->
	
	<b>Session Attribute (PageContext.SESSION_SCOPE) :</b>
	<%=pageContext.getAttribute("sayi2",PageContext.SESSION_SCOPE) %>
	<br>
	<b>Application Attribute (PageContext.APPLICATION_SCOPE) :</b>
	<%=pageContext.getAttribute("sayi3",PageContext.APPLICATION_SCOPE) %>
	<hr>
	
	
	<!-- session olarak da attribute erişebiliriz -->
	<b>Session getAttribute :</b>
	<%=session.getAttribute("sayi2")%>
	<hr>
	
	<!-- Veya ; -->
	
	<b>findAttribute (page) : </b>
	<%=pageContext.findAttribute("sayi1") %>
	<br>
	<b>findAttribute (session) : </b>
	<%=pageContext.findAttribute("sayi2") %>
	<br>
	<b>findAttribute (application) : </b>
	<%=pageContext.findAttribute("sayi3") %>
	<br>
	<b>findAttribute (session set) : </b>
	<%=pageContext.findAttribute("sayi4") %>
	<br>
	<b>findAttribute (application set) : </b>
	<%=pageContext.findAttribute("sayi5") %>
	<hr>
	
	<a href="attribute1.jsp">sayfa1</a>
</body>
</html>