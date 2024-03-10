/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.User;
import model.UserDTO;

/**
 *
 * @author admin
 */
@WebServlet(name="AdminServlet", urlPatterns={"/admin"})
public class AdminServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        DAO dao = new DAO();
        String role = request.getParameter("role");
        int role_id;
        try{
            role_id = Integer.parseInt(role);     
            List<User> listUser = dao.getUsers(role_id);
            request.setAttribute("listUsers", listUser);

        }catch(NumberFormatException e){
            
        }
        
        
        
        
        int userCount = dao.countUser(1);
        int shopCount = dao.countUser(2);
        int orderCount = dao.countOrder();
        float rev = dao.calculateRevenue();
        List<UserDTO> topUsers = dao.topXUser();
        List<Product> topProducts = dao.getTop5Product();

        int pCount =dao.countProduct();

        request.setAttribute("revenue", rev);
        request.setAttribute("userCount", userCount);
        request.setAttribute("shopCount", shopCount);
        request.setAttribute("pCount", pCount);
        
        request.setAttribute("orderCount", orderCount);
        request.setAttribute("topUsers", topUsers);
        request.setAttribute("topProducts", topProducts);

        request.getRequestDispatcher("admin.jsp").forward(request, response);
        
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}