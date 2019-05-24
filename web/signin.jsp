<%-- 
    Document   : signin.jsp
    Created on : 31 Jan, 2019, 7:05:26 PM
    Author     : donth           --%>

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
            <center> <b><font size="6">Welcome</b></font></center>
        </h1>
    <center>
        <form method="post">
            <input type="radio" checked><label><font size="5" color="red"><b>Login:Already a customer</b></font></label><br><br>
            <center><img src="images/user2.png" alt="cart" align="center" height="150" width="150"></center> <br>
            <font size="5" color="red"><b>Enter Email:&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="email"  name="mail" placeholder="Enter Email" style="width:457px;height:25px" required></font><br><br></br>
            <font size="5" color="red"><b>Enter password: </b><input type="password" name="password" placeholder="Enter Password" style="width:450px;height:25px" required></font><br><br>
            <button type="submit"  style="background-color:orange;width:500px;height:30px"><font size="4" color="blue">Continue</font></button>
         </form>
</center>
    <%@page import="java.sql.*" %>
    <%
    try
        {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
     String email,password;
     email=request.getParameter("mail");
      password=request.getParameter("password");
     if(email!=null  && password!=null)
     {
         Statement stmt=con.createStatement();
         String q="select user,mobno from userdetails_tbl where email='"+email+"' and password='"+password+"'";
         ResultSet rs=stmt.executeQuery(q);
         if(rs.next())
         {
             String name=rs.getString(1);
             String mobno=rs.getString(2);
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
             out.println("<center><h3>Error in login</h3></center>");
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
