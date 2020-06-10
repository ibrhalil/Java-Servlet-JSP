<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kaç kere oturum açtın ? </title>
</head>
<body>
	<b>Session ID : </b><span><%=session.getId() %></span>
	<br>
	<%
		if(session.getAttribute("ziyaretci")!=null)
		{
			int sayac = Integer.parseInt((String)session.getAttribute("ziyaretci"));
			sayac++;
			session.setAttribute("ziyaretci", sayac+"");
			
			out.print("Bu sayfayı "+sayac+" kere ziyaret ettiniz.");
		}
		else
		{
			session.setAttribute("ziyaretci", "1");
		}
	
		
	%>
</body>
</html>