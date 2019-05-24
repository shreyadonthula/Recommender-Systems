<%-- 
    Document   : cal
    Created on : 13 Mar, 2019, 9:39:27 AM
    Author     : donth--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
          
     
    
        <%@page import="java.sql.*,java.lang.*"%>
    
        <%
           try
            {
                String x1[]=new String[100];
                String x11[]=new String[100];
                String col[]=new String[100];
                 String col1[]=new String[100];
                 String q;
                int l1[]=new int[100];
                int l2[]=new int[100];
                int l3[]=new int[100];
                int l4[]=new int[100];
                int l5[]=new int[100];
                int i1[]=new int[100];
                int i2[]=new int[100];
                int i3[]=new int[100];
                int i4[]=new int[100];
                int i5[]=new int[100];
                int i11[]=new int[100];
                int i22[]=new int[100];
                int i33[]=new int[100];
                int i44[]=new int[100];
                int i55[]=new int[100];
                int m[]=new int[100];
                int m1[]=new int[100];
                int m2[]=new int[100];
                int v[]=new int[100];
                int i=0,p=0,k,j,big;
                String user=request.getParameter("user");
                 Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
            q="select * from dressitems_tbl";
          Statement stmt=con.createStatement();
          ResultSet rs=stmt.executeQuery(q);
          while(rs.next())
          {
           
             x1[i]= rs.getString(1);
             i1[i]= rs.getInt(5);
             i2[i]= rs.getInt(6);
             i3[i]= rs.getInt(7);
             i4[i]= rs.getInt(8);
             i5[i]= rs.getInt(9);
             i++;
        } 
          String c=x1[i-1];
         if(i1[i-1]==1)
         {
          for(p=0;p<i;p++)
              l1[p]=i1[p];
         }
         else
         {
           for(p=0;p<i;p++)
              l1[p]=0;  
         }
           if(i2[i-1]==1)
          {
          for(p=0;p<i;p++)
              l2[p]=i2[p];
         }
           else
         {
           for(p=0;p<i;p++)
              l2[p]=0;  
         }
           if(i3[i-1]==1)
           {
          for(p=0;p<i;p++)
             l3[p]=i3[p];
         }
           else
         {
           for(p=0;p<i;p++)
              l3[p]=0;  
         }
           if(i4[i-1]==1)
          {
          for(p=0;p<i;p++)
              l4[p]=i4[p];
         }
           else
         {
           for(p=0;p<i;p++)
              l4[p]=0;  
         }
           if(i5[i-1]==1)
           {
          for(p=0;p<i;p++)
              l5[p]=i5[p];
         }
           else
         {
           for(p=0;p<i;p++)
              l5[p]=0;  
         }
          k=0;
           for(p=0;p<i-1;p++)
           {
               if( l1[p]==1|| l2[p]==1 || l3[p]==1 || l4[p]==1 ||l5[p]==1)
               {
                   x11[k]=x1[p];
                   i11[k]=i1[p];
                   i22[k]=i2[p];
                   i33[k]=i3[p];
                   i44[k]=i4[p];
                   i55[k]=i5[p];
                   k++;
               }
           }
          out.println("<h1>Calculation:</h1>");  
          out.println("<table border='0'>");
           for(p=0;p<k;p++)
          {
          out.println("<tr><th>"+x11[p]+"</th> <th> "+i11[p]+" </th> <th> "+i22[p]+" </th>  <th> "+i33[p]+" </th> <th> "+i44[p]+" </th> <th> "+i55[p]+" </th> </tr>");  
          }
          out.println("</table>");
            for(p=0;p<5;p++)
            {
                m[p]=0;
                m1[p]=0;
                m2[p]=0;
                v[p]=0;
            }
            j=0;
           for(p=0;p<k;p++)
           {
              if(i11[p]==1)
                 m[j]=m[j]+1;
              if(i22[p]==1)
                 m[j+1]=m[j+1]+1;
              if(i33[p]==1)
                 m[j+2]=m[j+2]+1;
              if(i44[p]==1)
                 m[j+3]=m[j+3]+1;
              if(i55[p]==1)
                 m[j+4]=m[j+4]+1;
                  }
          // out.println("   ");
           
          int l11=-1;
          int l22=-1;
          int l33=-1;
          int l44=-1;
          int l55=-1;
          if(i1[i-1]==1)
              l11=0;
          if(i2[i-1]==1)
              l22=1;
          if(i3[i-1]==1)
              l33=2;
          if(i4[i-1]==1)
              l44=3;
          if(i5[i-1]==1)
              l55=4;
           for(p=0;p<5;p++)
         {
             m1[p]=m[p];
             if(p==l11 || p==l22 || p==l33 || p==l44 || p==l55)
             {
                 m1[p]=-1;
                 m[p]=-1;
             }
         }
           out.print("<font color='red'>__________________</font>");
           out.println("<h5></h5>");
           out.println("<table border='0'><tr>");
           for(p=0;p<5;p++)
           {
               out.print("<th>"+m[p]+  " </th>");
           }
           out.println("</tr></table>");
           // out.println("<h5></h5>");
            out.println("<font color='red'>__________________</font>");
         
           big=0;
         for(p=0;p<5;p++)
             for(j=p+1;j<5;j++)
                   if(m[p]<m[j])
                   {
                       big=m[p];
                       m[p]=m[j];
                      m[j]=big;
                   }
          
           int  s=0;
	 for(p=0;p<5;p++)
         {
	 for(j=0;j<5;j++)
         {
	    if(m[p]==m1[j] && v[j]!=1)
	    {	
	      m2[s]=j;
	      s++;
                v[j]=1;
                break;
	  }
         }
         }
          Statement stmt3=con.createStatement();
          String strQuery2 = "select prod_name from dresses_tbl order by prod_id";
            ResultSet rs3 = stmt3.executeQuery(strQuery2);
            p=0;
            while(rs3.next())
            {
                col[p]=rs3.getString(1);
                p++;
            }
             out.println("<h5></h5>");
             for(p=0;p<5;p++)
             {
                 out.println("<b><font size='3' color='purple'>"+col[p]+"-"+(p+1)+"</font><b>");
                 out.println("<h5></h5>");
             }
         out.println("<h3>Recommended items:</h3>");
          for(p=0;p<5;p++)
                 out.println("<b><font size='3' color='purple'>"+(m2[p]+1)+"</font></b>");
          out.print("<h1></h1>");
        for(p=0;p<5;p++)
            {
             if(
                     p==m2[0] || p== m2[1] ||p==m2[2])
                 out.println("<b><font size='3' color='purple'>"+col[p]+"</font><b>");
            }
            try
            {
    Statement stmt1=con.createStatement();
     Statement stmt2=con.createStatement();
     p=0;
       String strQuery1 = "select prod_id from dresses_tbl where prod_id ="+(m2[4]+1);
       ResultSet rs2 = stmt2.executeQuery(strQuery1);
       String strQuery = "select prod_id from dresses_tbl where prod_id in ("+(m2[0]+1)+","+(m2[1]+1)+","+(m2[2]+1)+")";
            ResultSet rs1 = stmt1.executeQuery(strQuery);
            %>
            <form method="post" action="checking1"><br>
                <center style="position: absolute;left:650px;top:150px"><font size="5" color="red"><b>User:</b></font><font size="6" style="text-decoration:underline"><b> <%= x1[i-1]%> </b></font><input type="hidden" value="<%= x1[i-1]%>" name="user"/></center><br><br>
               <% out.println("<center style='position: absolute;left:650px;top:230px'><h3><font size='5' color='darkmagenta'>Choosen Items:</font></h3></center>");%>
     <div style="position: absolute;left:650px;top:300px" >
           <%
     while(rs2.next()){
       %>
               
       <img src="image1.jsp?imgid=<%=rs2.getInt(1)%>" width="260" height="350" /> 
             
       <%
       }
     %>
       </div>
                 </br></br>
       <% out.println("<center><h3><font size='5' color='darkmagenta' style='position: absolute;left:650px;top:750px'>Recommended Items:</font></h3></center>");%>
       <div style="position: absolute;left:450px;top:800px" >
           <%
     while(rs1.next()){
       %>
               
       <input  type="checkbox" name="<%= rs1.getInt(1)%>" value="<%= rs1.getInt(1)%>"><img src="image1.jsp?imgid=<%=rs1.getInt(1)%>" width="260" height="350" /> </input>
             
       <%
       }
     %>
       </div>
     <br><br>
       <center><input style="position: absolute;top:1200px;left:680px" type="submit" value="Add to cart" /></center>
            </form>
            <%
                   }
                   catch(Exception e)
                   {
                       
                   }
                }
            
            catch(Exception e)
            {
                out.println(e);
            }
            %>
</body>
</html>
            
    

