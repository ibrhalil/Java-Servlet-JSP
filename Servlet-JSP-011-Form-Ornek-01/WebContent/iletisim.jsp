<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		boolean hata = false;
		if(request.getParameter("first_name")!=null && request.getParameter("first_name").trim().length()>0)
		{
			out.print(request.getParameter("first_name")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		
		if(request.getParameter("last_name")!=null && request.getParameter("last_name").trim().length()>0)
		{
			out.print(request.getParameter("last_name")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		if(request.getParameter("email")!=null && request.getParameter("email").trim().length()>0)
		{
			out.print(request.getParameter("email")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		if(request.getParameter("phone")!=null && request.getParameter("phone").trim().length()>0)
		{
			out.print(request.getParameter("phone")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		if(request.getParameter("address")!=null && request.getParameter("address").trim().length()>0)
		{
			out.print(request.getParameter("address")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		if(request.getParameter("comment")!=null && request.getParameter("comment").trim().length()>0)
		{
			out.print(request.getParameter("comment")+"<hr>");
		}
		else
		{
			hata=true;
		}
		
		//hata varsa Geri Dön

		//request kullanımında çalışmıyor
		application.setAttribute("hata",hata);
		response.sendRedirect("iletisimKur.jsp");
		
	%>
</body>
</html>