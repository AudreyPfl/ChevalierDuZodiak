/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.bean.Client;
import fr.solutec.bean.Compte;
import fr.solutec.bean.Conseiller;
import fr.solutec.bean.Historique;
import fr.solutec.dao.CompteDao;
import fr.solutec.dao.ConseillerDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author esic
 */
@WebServlet(name = "CompteServlet", urlPatterns = {"/compte"})
public class CompteServlet extends HttpServlet {

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
            out.println("<title>Servlet CompteServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CompteServlet at " + request.getContextPath() + "</h1>");
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
        
        try {
            
           HttpSession session = request.getSession(true);
            Client c = (Client) session.getAttribute("client");
            
            Conseiller cons = ConseillerDao.getConsByClient(c);
            
            request.setAttribute("client", c);
            request.setAttribute("cons", cons);
            String idc = request.getParameter("id");
            int id = Integer.parseInt(idc);
            
            List<Historique> hi = new ArrayList<>();
            
            hi = CompteDao.getAllHistoByCompte(id);
            
            
            request.getRequestDispatcher("WEB-INF/comptes.jsp").forward(request, response);
            
        } catch (Exception e) {
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
        try {
            
           HttpSession session = request.getSession(true);
            Client c = (Client) session.getAttribute("client");
            
            Conseiller cons = ConseillerDao.getConsByClient(c);
            
            request.setAttribute("client", c);
            request.setAttribute("cons", cons);
            String idc = request.getParameter("idrec");
            int id = Integer.parseInt(idc);
            
            String dec = request.getParameter("dec");
            Double deco = Double.parseDouble(dec);
            request.setAttribute("deco", deco);
            
            List<Historique> hi = new ArrayList<>();
            hi = CompteDao.getAllHistoByCompte(id);
            
            request.setAttribute("hi", hi);
            
            request.getRequestDispatcher("WEB-INF/comptes.jsp").forward(request, response);
            
        } catch (Exception e) {
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
