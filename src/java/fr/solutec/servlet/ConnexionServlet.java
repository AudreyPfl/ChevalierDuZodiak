/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Admin;
import fr.solutec.bean.Client;
import fr.solutec.bean.Compte;
import fr.solutec.bean.Conseiller;
import fr.solutec.bean.Personne;
import fr.solutec.dao.AdminDao;
import fr.solutec.dao.ClientDao;
import fr.solutec.dao.CompteDao;
import fr.solutec.dao.ConseillerDao;
import fr.solutec.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stagiaire
 */
@WebServlet(name = "ConnexionServlet", urlPatterns = {"/connexion"})
public class ConnexionServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConnexionServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConnexionServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try{
            String log = request.getParameter("mail");
            String pw = request.getParameter("mdp");
            Client cl = ClientDao.getByLoginPass(log, pw);
            Conseiller co = ConseillerDao.getByLoginPass(log, pw);
            Admin ad = AdminDao.getByLoginPass(log, pw);
            
            if (cl != null){
                
                
                request.getSession(true).setAttribute("usersession", cl);
                
                response.sendRedirect("espaceclient");}
            
            else if (co != null){
                request.getSession(true).setAttribute("usersession", co);
                response.sendRedirect("espaceconseiller");}
            else if (ad != null){
                request.getSession(true).setAttribute("usersession", ad);
                response.sendRedirect("espaceadmin");
                
            }else{
                request.setAttribute("msg", "login ou mot de passe incorrect");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e){
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }
        
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
