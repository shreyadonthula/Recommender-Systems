<%-- 
    Document   : viewelectronicsad
    Created on : 29 Mar, 2019, 11:11:50 PM
    Author     : donth--%>

<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <head>
        <link rel="stylesheet" href="ss.css"/>
    </head>
    <body>
     <h5 style="margin-bottom:0;">
        
            
      <center> <img src="images/shopa.png" alt="cart" align="center" height="180" width="800"> </center>
      </h5>
          <h2  style="margin-top:0;" align="right">
       <a href="logout.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;logout</a>&nbsp;&nbsp;
            </h2>
       
    <center><h1> Electronic Items</h1><center>
 
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select prod_id from electronics_tbl order by prod_id";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
        %>
        <img src="image.jsp?imgid=<%=rs.getInt(1)%>" width="260" height="350" />
        <%
    }
    out.println("</table>");
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
</body>
</HTML>
