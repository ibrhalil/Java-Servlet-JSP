<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sürüm bilgisi</title>
</head>
<body>
<h3>Sunucu Sürümü</h3>
<%=application.getServerInfo() %>
<h3>Servlet Sürümü</h3>
<%=application.getMajorVersion() %>
<h3>JSP Sürümü</h3>
<%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
<br><br><hr>

<%=application.getContextPath() %>

<br><br>
<%=application.getServletContextName() %>

<br><br>
<%=application.getSessionTimeout() %>

<br><br>
<%=application.getVirtualServerName() %>

<br><br>
<%=application.toString() %>

</body>
</html>