<%-- 
    Document   : admin
    Created on : 28 Jan, 2019, 8:30:34 PM
    Author     : donth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="ss.css"/>
         <script type="JavaScript">
             function validate()
             {
                 var name=document.getElementById("name");
                 var password=document.getElementById("password");
                
             }
         </script>
    </head>
    <body>
       <h5 style="margin-bottom:0;">
        
            
          <center> <img src="images/shopa.png" alt="cart" align="center" height="180" width="800"> </center>
      </h5>
          <h2  style="margin-top:0;" align="right">
        
       <a href="logout.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;logout</a>&nbsp;&nbsp;
            </h2>
        
       <p>
    <center><h1> <b><font size="6">Admin login</font></b></h1></center>
        <p>
    <center> <img src="images/admin.png"  alt="cart" height="150" width="150"></center></br></br>
    <center>
        <form method="post">
     <label><font size="5" color="red"><b>UserName:</b></font></label>
    <input type="text" id="n1" name="name"  style="width:150px"/></br><br>
    <label><font size="5" color="red"><b>password: </b></font></label>
    <input type="password" name="password" id="p1" style="width:150px"></br></br></br>
    <input type="submit" value="Login"/>
        </form>
    </center>
 <%@page import="java.sql.*" %>
<%
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
     String name,password;
     name=request.getParameter("name");
     password=request.getParameter("password");
     if(name!=null && password!=null)
     {
         Statement stmt=con.createStatement();
         String q="select * from adminlogin_tbl1 where username='"+name+"' and password='"+password+"'";
        ResultSet rs=stmt.executeQuery(q);
        if(rs.next())
        {
            %>
            <jsp:forward page="admintbl.jsp">
                <jsp:param   name="name" value ="<%= name %>"/>
            </jsp:forward>
       <%            
        }
        else
            out.println("login failed");
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

 
