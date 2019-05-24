
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
        <h1>
              <center> <b><font color='black' size="7"> User Login</font></b></center>
         </h1><br>
      <center> <b><p><font color='darkviolet' size="6"> Sign in to your account</font></p></b></center><br>
          <center> <img src="images/user2.png"  alt="cart" height="100" width="100"></center><br>
    <center>
        <form method="post">
        <button type="submit" style="width:500px;height:30px" formaction="signin.jsp"><font size="4" color="blue">Already a customer?Sign in</font></button><br><br>
    <button style="width:500px;height:30px" formaction="account.jsp"><font size="4" color="blue">New to Shopaholic Store.in? Create an account</font></button>
        </form>
    </center>
</body>
</html>