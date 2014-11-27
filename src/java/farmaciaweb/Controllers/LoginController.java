/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteCliente;
import Persistence.PersistenceFuncionario;
import farmaciaweb.Models.Clientes;
import farmaciaweb.Models.Funcionarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Filipe
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String nome = request.getParameter("nomeID");
       String senha = request.getParameter("passwordID");
       String tipo = request.getParameter("RadTipo");
       HttpSession session = request.getSession();
       switch(tipo)
       {
           case "Administrador":
               if(nome.equals("Administrator") && senha.equals("P@ssword1")){
                    session.setAttribute("Login",nome);
                   RequestDispatcher view = request.getRequestDispatcher( "/Principal/Main.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
                 else
               {
                   RequestDispatcher view = request.getRequestDispatcher( "/Login/Login.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
           break;
           case "Cliente":
               Persistence.PersisteCliente pe = new PersisteCliente();
               if(pe.ExistsClienteByLogin(nome, senha) == true)
               {
                   session.setAttribute("Login",nome);
                   RequestDispatcher view = request.getRequestDispatcher( "/Principal/Main.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
               else
               {
                   session.setAttribute("Login",nome);
                   RequestDispatcher view = request.getRequestDispatcher( "/Login/Login.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
               break;
           case "Funcionario":
                Persistence.PersistenceFuncionario pe1 = new PersistenceFuncionario();
               if(pe1.ExistsFuncionarioByLogin(nome, senha) == true)
               {
                   session.setAttribute("Login",nome);
                   RequestDispatcher view = request.getRequestDispatcher( "/Principal/Main.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
               else
               {
                   RequestDispatcher view = request.getRequestDispatcher( "/Login/Login.jsp" ); // repassar a chamada o JSP
                   view.forward( request , response );
               }
               break;
       }
            
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
