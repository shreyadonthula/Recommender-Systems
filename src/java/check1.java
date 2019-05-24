/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author donth
 */
public class check1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try
          {
          String  i [],user,q,email,password,mobno;
          int x1,x2,x3,x4,x5;
            //i = request.getParameterValues("item");
            if(request.getParameter("1")!=null)
               x1=Integer.parseInt(request.getParameter("1"));
            else
                x1=0;
            if(request.getParameter("2")!=null)
               x2=Integer.parseInt(request.getParameter("2"));
            else
                x2=0;
            if(request.getParameter("3")!=null)
               x3=Integer.parseInt(request.getParameter("3"));
            else
                x3=0;
            if(request.getParameter("4")!=null)
               x4=Integer.parseInt(request.getParameter("4"));
            else
                x4=0;
            if(request.getParameter("5")!=null)
               x5=Integer.parseInt(request.getParameter("5"));
            else
                x5=0;
            
           user=request.getParameter("user");
            mobno=request.getParameter("mobno");
             email=request.getParameter("email");
              password=request.getParameter("password");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kits","root","");
           q="insert into dressitems_tbl values('"+user+"','"+mobno+"','"+email+"','"+password+"',"+x1+","+x2+","+x3+","+x4+","+x5+")";
          Statement stmt=con.createStatement();
          int y=stmt.executeUpdate(q);
          if(y!=0)
          {
           
              //out.println("<h2><a href='usrer.jsp'>new</a></h2>");
             //  out.println("<h2><a href='cal1.jsp?user=<%= user %>'>go</a></h2>");
           
           getServletContext().getRequestDispatcher("/cal1.jsp").forward(request, response);
       
          }
          else
              out.println(" not inserted");
           
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
