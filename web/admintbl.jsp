<%-- 
    Document   : admintbl
    Created on : 29 Jan, 2019, 6:25:59 PM
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
          
      <%
           String name=request.getParameter("name");
           out.println("<font  color='blue' size='7'><center><b >Welcome to Admin: "+name+"</b></center></h3></font>");
      %>
     
        <h1>
           <select onchange="location=this.value;">
             <option value="admintbl.jsp">Add products&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
             <option value="addelectronics.jsp">Electronics</option>
             <option value="Addresses.jsp">Dresses</option>
           </select>&nbsp;&nbsp;&nbsp;&nbsp;
        
         <select onchange="location=this.value;">
             <option value="admintbl.jsp">View products&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
             <option value="viewelectronicsad.jsp">Electronics</option>
             <option value="viewdressesad.jsp">Dresses</option>
           </select>&nbsp;&nbsp;&nbsp;&nbsp;
           
             <select onchange="location=this.value;">
             <option value="admintbl.jsp">View users&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
             <option value="viewue.jsp">Electronics</option>
             <option value="viewud.jsp">Dresses</option>
           </select>&nbsp;&nbsp;&nbsp;&nbsp;
       
         
        </h1>
</html>
