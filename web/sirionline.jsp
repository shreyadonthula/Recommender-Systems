<%-- 
    Document   : sirionline
    Created on : 1 Feb, 2019, 8:39:16 PM
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
    <%@page import="java.sql.*, java.io.*"%>
    <body>
        <h1>
         <h5 style="margin-bottom:0;">
            
          <center> <img src="images/shopa.png" alt="cart" align="center" height="180" width="800"> </center>
                </h5>
            <h2  style="margin-top:0;" align="right">
        
       <a href="logout.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;logout</a>&nbsp;&nbsp;
            </h2>
            
          .  <div class="search-box">
                   <select   class="search-select" onchange="location=this.value;">
                             <option value="sirionline.jsp">All</option>
                             <option value="viewelectronics.jsp?name=<%= request.getParameter("name")%>&mobno=<%= request.getParameter("mobno")%>&email=<%= request.getParameter("email")%>&password=<%= request.getParameter("password")%>">Electronics</option>
                             <option value="viewdresses.jsp?name=<%= request.getParameter("name")%>&mobno=<%= request.getParameter("mobno")%>&email=<%= request.getParameter("email")%>&password=<%= request.getParameter("password")%>">Dresses</option>
                              </select>
                 <form method="post">
                        <input type="text" class="search-text" placeholder=" Type to search" id="search">
                        <a class="search-btn" href="#" >
                        <i class="fas fa-search"></i>
                        </a>
                </form>               
            </div>
        </h1>  </br>
    <center><h1>Welcome to Shopaholic Store!!
        </h1></center>
        <form method="post">
            <center><font size="5" color="red"><b>Welcome: </b></font><font size="6" color="blue"><%= request.getParameter("name")%></b></font>
                <input  style="font-size: 18px" type="hidden" name="name" value="<%= request.getParameter("name")%>"</center>   
        </form></br></br>
    
    <marquee direction="left" behavior="scroll" scrollamount="18" scrolldelay="0" >
  <img src="images/mobile.jpg"  alt="cart" height="400" width="500"> 
  <img src="images/dress.jpg" alt="cart"  height="400" width="500">
  <marquee>
      
       
    </body>
</html>
