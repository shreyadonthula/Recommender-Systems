<%-- 
    Document   : viewdresses
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
         <div class="search-box">
                   <select   class="search-select" onchange="location=this.value;">
                             <option value="sirionline.jsp">All</option>
                             <option value="viewelectronics.jsp" >Electronics</option>
                             <option value="viewdresses.jsp" >Dresses</option>
                   </select>
                 <form method="post">
                        <input type="text" class="search-text" placeholder=" Type to search" id="search">
                        <a class="search-btn" href="#" >
                        <i class="fas fa-search"></i>
                        </a>
                </form>               
            </div>
           </h5>
    <center><h1>Dresses</h1></center>
          <table>
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select prod_id from dresses_tbl order by prod_id";
    ResultSet rs = stmt.executeQuery(strQuery);
    %>
            <form method="post" action="check1">
                <center><font size="5" color="red">User:</font><font size="6" color="blue"><%= request.getParameter("name") %></font><input style="font-size: 18px" type="hidden" name="user" value="<%= request.getParameter("name") %>"/></font></center><br><br>
    <input style="font-size: 18px" type="hidden" name="mobno" value="<%= request.getParameter("mobno") %>"/>
    <input style="font-size: 18px" type="hidden" name="email" value="<%= request.getParameter("email") %>"/>
    <input style="font-size: 18px" type="hidden" name="password" value="<%= request.getParameter("password") %>"/>
        <%
    while(rs.next()){
       %>
       <input type="checkbox" name="<%= rs.getInt(1)%>" value="1"><img src="image1.jsp?imgid=<%=rs.getInt(1)%>" width="250" height="400" /></input>
       
      <%
    }
    %>
       <br>
       <center><input type="submit" value="Add to cart" /></center>
            </form>
       <%
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
