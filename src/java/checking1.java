import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
public class checking1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      try
      {
           String user1 ,q="";
           int id=1;
           user1=request.getParameter("user");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
           Statement stmt=con.createStatement();
           Statement stmt1=con.createStatement();
           String q1="select prod_name from dresses_tbl order by prod_id";
          ResultSet rs=stmt1.executeQuery(q1);
          String x[]=new String [100];
          int i=0;
          while(rs.next())
          {
              x[i]=rs.getString(1);
              i++;
          }
          if(request.getParameter("1")!=null)
           {
           q="update dressitems_tbl set "+x[0]+" =  "+id+" where user='"+user1+"'";
           stmt.addBatch(q);
           }
           if(request.getParameter("2")!=null)
           {
           q="update dressitems_tbl  set "+x[1]+" ="+id+" where user='"+user1+"'";
           stmt.addBatch(q);
           }
          if(request.getParameter("3")!=null)
           {
           q="update dressitems_tbl  set  "+x[2]+"="+id+" where user='"+user1+"'";
           stmt.addBatch(q);
           }
           if(request.getParameter("4")!=null)
           {
           q="update dressitems_tbl  set "+x[3]+" ="+id+" where user='"+user1+"'";
           stmt.addBatch(q);
           }
           if(request.getParameter("5")!=null)  
           {
           q="update dressitems_tbl  set  "+x[4]+"="+id+" where user='"+user1+"'";
           stmt.addBatch(q);
           }
            int[] y=stmt.executeBatch();
          if(y[0]!=0)
          {
             out.println("<center style='color:'red'><h1>Thank you...</h1></center>");
               out.println("<center><h2><a href='home1.jsp'>Visit Again</a></h2></center>");

          
          }
          else
          {
              out.println(" not inserted");
            }
          }

        catch(NumberFormatException | ClassNotFoundException | SQLException e)
        {
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
