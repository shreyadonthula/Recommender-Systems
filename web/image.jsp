<html>
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
          
      <center><h2>Electronic Items</h2></center>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<form method="post">
<%
  int id =  Integer.parseInt(request.getParameter("imgid"));
  int x1=0;
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");      
    Statement st=con.createStatement();
    String strQuery = "select image from electronics_tbl where prod_id="+id;
    ResultSet rs = st.executeQuery(strQuery);
    String imgLen="";
    if(rs.next()){
      imgLen = rs.getString(1);
       }  
    rs = st.executeQuery(strQuery);
    if(rs.next()){
      int len = imgLen.length();
      byte [] rb = new byte[len];
      InputStream readImg = rs.getBinaryStream(1);
      
      int index=readImg.read(rb, 0, len);  
      st.close();
      response.reset();
      response.getOutputStream().write(rb,0,len);
      String q="select prod_name,prod_cat,prod_total from electronics_tbl where prod_id="+id;
        rs = st.executeQuery(q);
        while(rs.next()){
       %>
        
            <%=rs.getString("prod_name")%>
             <%=rs.getString("prod_cat")%>
             <%=rs.getInt("prod_total")%>
            
                        
      
      <%
    }
         
      response.getOutputStream().flush();        
    }
    
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
</body>
</html>