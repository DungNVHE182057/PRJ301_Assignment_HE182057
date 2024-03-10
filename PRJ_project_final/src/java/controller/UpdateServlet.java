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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Product;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name="UpdateServlet", urlPatterns={"/updateProduct"})
public class UpdateServlet extends HttpServlet {
   
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
        int id = Integer.parseInt(request.getParameter("id"));
        DAO dao = new DAO();
        Product p = dao.getProductById(id);
        request.setAttribute("updateProduct", p);
        request.getRequestDispatcher("update.jsp").forward(request, response);
        
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
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        User u = (User)session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int cate_id = Integer.parseInt(request.getParameter("category"));
        float price = Float.parseFloat(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        Product p = new Product(id, name, description, price, discount, quantity, 0, image, cate_id,u.getId());
        dao.update(p);
        response.sendRedirect("shop");
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
