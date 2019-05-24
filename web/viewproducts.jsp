

<%-- 
    Document   : viewproducts
    Created on : 17 Mar, 2019, 11:38:56 PM
    Author     : donth--%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <head>
        <link rel="stylesheet" href="ss.css"/>
    </head>
    <body><h1>
        <img src="images/shopcom.jfif" alt="cart" align="left" height="50" width="100"> 
        <b> Siri Online Shopping</b>
         <div class="search-box">
                   <select   class="search-select" onchange="location=this.value;">
                             <option>All</option>
                             <option value="viewlectronics.jsp" >Electronics</option>
                             <option value="viewdresses.jsp" >Dresses</option>
                               </select>
                 <form method="post">
                        <input type="text" class="search-text" placeholder=" Type to search" id="search">
                        <a class="search-btn" href="#" >
                        <i class="fas fa-search"></i>
                        </a>
                </form>               
            </div>
        </h1>
      
    <center><h2> Dress Items</h2><center>
      <table>
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select prod_id from dresses_tbl";
    ResultSet rs = stmt.executeQuery(strQuery);
    %>
            <form method="post" action="check1">
        <center><font size="5" color="red">User: <input style="font-size: 18px" type="text" name="user" value="<%= request.getParameter("name") %>"/></font></center><br><br>
 <input style="font-size: 18px" type="hidden" name="mobno" value="<%= request.getParameter("mobno") %>"/><br><br>
    <input style="font-size: 18px" type="hidden" name="email" value="<%= request.getParameter("email") %>"/><br><br>
    <input style="font-size: 18px" type="hidden" name="password" value="<%= request.getParameter("password") %>"/><br><br>
    
    <%
    while(rs.next()){
       %>
       <input type="checkbox" name="<%= rs.getInt(1)%>" value="1"><img src="image1.jsp?imgid=<%=rs.getInt(1)%>" width="200" height="200" /></input>
      <%
    }
    %>
       <br><br>
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
