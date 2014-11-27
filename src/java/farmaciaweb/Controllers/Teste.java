/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.DAOfarmaciaweb;
import farmaciaweb.Models.Fornecedores;
import java.io.IOException;
import java.io.PrintWriter;
import javax.security.auth.login.Configuration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;  
import javax.transaction.Transaction; 
import org.hibernate.Session;
import org.hibernate.SessionFactory;




/**
 *
 * @author Filipe
 */
@WebServlet(name = "Teste", urlPatterns = {"/Teste"})
public class Teste extends HttpServlet {

   

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
           String nome_produto = request.getParameter("txtNome");
           
           Fornecedores fo = new Fornecedores();
           fo.setBairro("Caipira");
           fo.setCidade("Nunca");
           fo.setNome("Cheto");
           fo.setRua("Vadio");
           fo.setTelefone("123456");
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(fo);
        session.getTransaction().commit();
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
               
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
