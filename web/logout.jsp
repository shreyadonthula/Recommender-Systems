<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'logout.jsp' starting page</title>
</head>
<body>
<%
   
    Cookie ck=new Cookie("name","");
    ck.setMaxAge(0);
    response.addCookie(ck);
  
   %>
Logged out successfully. Click <a href='home1.jsp'>
    here</a> to login again.<br>
</body>
</html>
