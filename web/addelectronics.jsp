<%-- 
    Document   : products.jsp
    Created on : 9 Feb, 2019, 5:50:29 PM
    Author     : donth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Set,java.util.HashSet,java.util.Random"%>
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
          
        
    <center> <h1> Add Electronic products</h1></center>
  <!--<img src="images/shopcom.jfif" alt="cart" align="left" height="500" width="500"> -->
    <center>
        <form  method="post" action="upload" enctype="multipart/form-data">
            <b><font size="4" color="black"><label>ProductName:</label></font></b>
            <input type="text" name="prodname"  style="width:500px;height:20px" required><br><br>
            <b><font size="4" color="black"><label>Product Desc:</label></font></b>
            <input type="text" name="proddesc"  style="width:500px;height:20px" required><br><br>
           
               <b><font size="4" color="black"><label>ProdCategory:</label></font></b>
            <input type="text" name="prodcat"  style="width:500px;height:20px" required><br><br>
            <b><font size="4" color="black"><label>Product status:</label></font></b>
          <input type="text" name="prodstatus" style="width:500px;height:20px" required><br><br>
            <b><font size="4" color="black"><label>Product Total:</label></font></b>
          <input type="number" name="prodtotal"  style="width:500px;height:20px" required><br><br>
            <b><font size="4" color="black"><label>Product stock:</label></font></b>
          <input type="text" name="prodstock" style="width:500px;height:20px" required><br><br>
            <b><font size="4" color="black"><label>Product color:</label></font></b>
          <input type="color" name="prodcolor" style="width:500px;height:20px" required><br><br>
           <b><font size="4" color="black"><label>Product pic:</label></font></b>
          <input type="file" name="image" style="width:500px;height:20px" required/><br><br>
            <button type="submit"  style="background-color:orange;width:500px;height:30px"><font size="4" color="darkviolet">Add</font></button>
        </form>
    </center>
</body>
</html>
     
     
  