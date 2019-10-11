/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Admin;
import fr.solutec.bean.Client;
import fr.solutec.bean.Conseiller;
import fr.solutec.bean.Personne;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author stagiaire
 */
@WebServlet(name = "ModifProfilServlet", urlPatterns = {"/modifProfil"})
public class ModifProfilServlet extends HttpServlet {

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
            out.println("<title>Servlet ModifProfilServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModifProfilServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(true);
        Client cl = (Client) session.getAttribute("client");
        Conseiller co = (Conseiller) session.getAttribute("conseiller");
        Admin ad = (Admin) session.getAttribute("client");
        
        try {
            
        
        
        if (cl != null){
            String nom = cl.getNom();
            String prenom = cl.getPrenom();
            String mdp = cl.getMdp();
            String mail = cl.getEmail();
            String sexe = cl.getSexe();
            Personne p = new Personne(nom, prenom, mail, sexe, mdp);
            request.setAttribute("personne", p);
            request.getRequestDispatcher("WEB-INF/navbar.jsp").forward(request, response);                          
        }
        
        else if (co != null){
            String nom = co.getNom();
            String prenom = co.getPrenom();
            String mdp = co.getMdp();
            String mail = co.getEmail();
            String sexe = co.getSexe();
            Personne p = new Personne(nom, prenom, mail, sexe, mdp);
            request.setAttribute("personne", p);
            request.getRequestDispatcher("WEB-INF/navbar.jsp").forward(request, response);                          
        }
        
        else if (ad != null){
            String nom = ad.getNom();
            String prenom = ad.getPrenom();
            String mdp = ad.getMdp();
            String mail = ad.getEmail();
            String sexe = ad.getSexe();
            Personne p = new Personne(nom, prenom, mail, sexe, mdp);
            request.setAttribute("personne", p);
            request.getRequestDispatcher("WEB-INF/navbar.jsp").forward(request, response);                          
        }
        else {
            request.getRequestDispatcher("WEB-INF/navbar.jsp").forward(request, response);
        }
        }
        
        catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }
        
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
