/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
 import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author donth
 */
@WebServlet(urlPatterns = {"/upload"})
@MultipartConfig(fileSizeThreshold=1024 *1024*2,
        maxFileSize=1024*1024*10,
        maxRequestSize=1024*1024*50)

public class upload extends HttpServlet {
     private  final String dbURL = "jdbc:mysql://localhost:3306/kits";
    private final String dbUser = "root";
    private final  String dbPass = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
         int row;
          InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
         int  prod_total1,prod_stock1;
     String prod_name,prod_desc,prod_cat,prod_status,prod_total,prod_stock,prod_color,prod_pic;
    
     prod_name=request.getParameter("prodname");
     prod_desc=request.getParameter("proddesc");
     prod_cat=request.getParameter("prodcat");
     prod_status=request.getParameter("prodstatus");
     prod_total=request.getParameter("prodtotal");
     prod_stock=request.getParameter("prodstock");
     prod_color=request.getParameter("prodcolor");
     
      Connection con = null; // connection to the database
      //String message = null;
    try
    {
         DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        con = DriverManager.getConnection(dbURL, dbUser, dbPass);
         prod_total1=Integer.parseInt(prod_total);
         prod_stock1=Integer.parseInt(prod_stock);
           String sql = "INSERT INTO electronics_tbl(prod_name,prod_desc,prod_cat,prod_status,prod_total,prod_stock,prod_color,image)"+"values (?,?,?,?,?,?,?,?)";
           PreparedStatement statement1=con.prepareStatement(sql);
           
           statement1.setString(1,prod_name);
           statement1.setString(2,prod_desc);
           statement1.setString(3,prod_cat);
           statement1.setString(4,prod_status);
           statement1.setInt(5,prod_total1);
            statement1.setInt(6,prod_stock1);
            statement1.setString(7,prod_color);
            statement1.setBinaryStream(8, inputStream, (int)filePart.getSize());
            int m=0;
            row=statement1.executeUpdate();
            if (row > 0) {
              String q1="alter table electronicitems_tbl add column "+prod_name+" int(11)";
              Statement stmt=con.createStatement();
              int y1=stmt.executeUpdate(q1);
               //String q2="update  items_tbl set "+prod_name+"="+0; 
               //Statement stmt1=con.createStatement();
              // int y2=stmt1.executeUpdate(q2);
               if(y1!=0) {
                  out.println("<h2><a href='Addelectronics.jsp'>add</a></h2>");
                   }
               out.println("<h1>Inserted</h1>");
           }
        con.close();
    }
    catch(SQLException | NumberFormatException e)
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
