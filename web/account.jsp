<%-- 
    Document   : account
    Created on : 31 Jan, 2019, 10:29:32 PM
    Author     : donth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="ss.css"/>
    </head>
    <body>
       
          <h5 style="margin-bottom:0;">
            
          <center> <img src="images/shopa.png" alt="cart" align="center" height="180" width="800"> </center>
                </h5>
          <h2  style="margin-top:0;" align="right">
        
       <a href="logout.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;logout</a>&nbsp;&nbsp;
            </h2>
          
        
         <h1>
              <center> <b><font size="6"> Welcome</font></b></center>
            </h1>
    <center>
        <form method="post">
            <font size="5" color="blue">New to shopaholic store </font><br>
            <input type="radio" checked><label><font size="5" color="red"><b>Create an account</b></font></label><br><br>
            <font size="5" color="red"><b>Enter Name:&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="name"  name="uname" placeholder="Enter Name" style="width:500px;height:30px" required></font><br><br>
            <font size="5" color="red"><b>Enter Mobno:&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="mobno" name="mobno" placeholder="Enter Mobile Number" style="width:500px;height:30px" required></font><br><br>
            <font size="5" color="red"><b>Enter Email:&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="email" name="email" placeholder="Enter Email" style="width:500px;height:30px" required></font><br><br>
            <font size="5" color="red"><b>Enter Password:&nbsp;&nbsp;&nbsp;</b><input type="password" name="password" placeholder="Enter Password" style="width:500px;height:30px" required></font><br><br>
            <button type="submit"  style="background-color:orange;width:500px;height:30px"><font size="4" color="blue">Register</font></button>
        </form>
    </center>
         <%@page import="java.sql.*" %>
    <%
    try
        {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
     String name,mobno,email,password;
      name=request.getParameter("uname");
      mobno=request.getParameter("mobno");
     email=request.getParameter("email");
      password=request.getParameter("password");
     if( name!=null && mobno !=null && email!=null  && password!=null)
     {
         Statement stmt=con.createStatement();
         String q="insert into userdetails_tbl(user,mobno,email,password) values('"+name+"','"+mobno+"','"+email+"','"+password+"')";
         int x=stmt.executeUpdate(q);
         if(x!=0)
         {
            %>
            <jsp:forward page="sirionline.jsp">
                <jsp:param   name="name" value ="<%= name %>"/>
                <jsp:param   name="mobno" value ="<%= mobno %>"/>
                <jsp:param   name="email" value ="<%= email%>"/>
                <jsp:param   name="password" value ="<%= password%>"/>
            </jsp:forward>
       <% 
         }
         else
             out.println("<center><h3>error in login</h3></center>");
     }
     con.close();
    }
    catch(Exception e)
{
    out.println(e);
}
%>
    </body>
</html>
