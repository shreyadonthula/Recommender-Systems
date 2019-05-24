<%-- 
    Document   : viewelectronics
    Created on : 26 Mar, 2019, 12:04:14 AM
    Author     : donth
--%>

<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <head>
        <link rel="stylesheet" href="ss.css"/>
    </head>
    <body>
        
           <h5 style="margin-bottom:0;">
        
            
          <center> <img src="images/shopa.png" alt="cart" align="center" height="180" width="800"> </center>
            <h2  style="margin-top:0;" align="right">
        
                <a href="logout.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;logout</a>&nbsp;&nbsp;
            </h2>
        </h5>
        
     
    <table border="1">
        <tr> <td>user</TD> <td>mobno</TD> <td>email</TD> <td>password</TD> <td>dress2</TD> <td>hjvkb</TD>  <td>Gown</TD> <td>FlaredGown2</TD> <td>SolidGown</TD></tr>
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select * from dressitems_tbl";
    ResultSet rs = stmt.executeQuery(strQuery);
    %>
            <%
    while(rs.next()){
       %>
        <tr>
            <td> <%=rs.getString(1)%></td>
            <td> <%=rs.getString(2)%></td>
            <td> <%=rs.getString(3)%></td>
            <td>   <%=rs.getString(4)%></td>
            <td>  <%=rs.getInt(5)%></td>
            <td>  <%=rs.getInt(6)%></td>
            <td>  <%=rs.getInt(7)%></td>
            <td>  <%=rs.getInt(8)%></td>
            <td>  <%=rs.getInt(9)%></td>
                   
          </tr>                
      
      <%
    }
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
 </table>
</body>
</HTML>
