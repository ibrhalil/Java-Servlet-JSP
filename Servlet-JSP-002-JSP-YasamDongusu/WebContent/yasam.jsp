<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Yasam Döngüsü</title>
</head>
<body>
	<%!
	
		String mail,site;
	
		public void jspInit()
		{
			ServletConfig servletConfig = getServletConfig();
			
			mail = servletConfig.getInitParameter("mail");
			site = servletConfig.getInitParameter("webSite");
			
			 
		}
	%>
	
	<%=mail %><br>
	<%=site %>
	
	
	<%!
		
		public void jspDestroy(){
		
			System.out.print("JSP Sonlandırıldı  !");
		
		}
	
	
	%>
</body>
</html>