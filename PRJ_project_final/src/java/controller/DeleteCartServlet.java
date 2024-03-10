/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name="DeleteCartServlet", urlPatterns={"/delcart"})
public class DeleteCartServlet extends HttpServlet {
   
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
        
        HttpSession session = request.getSession();
        User u = (User)session.getAttribute("user");
        
        Cookie[] arr = request.getCookies();
        String txt = "";
        String ckname = "cart"+u.getId();
        if(arr!=null){
            for(Cookie o:arr){
                if(o.getName().equals(ckname)){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }

            }
        }
        if(txt.endsWith("/"+id)){
            txt = txt.substring(0, txt.length()-2);
        }else if(txt.equals(Integer.toString(id))){
            txt="";
        }
        else{
            txt = txt.replace("/"+id+"/", "/");
        }
        Cookie c = new Cookie(ckname, txt);
        c.setMaxAge(60*60*24*30);
        response.addCookie(c);

        response.sendRedirect("cart");
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
