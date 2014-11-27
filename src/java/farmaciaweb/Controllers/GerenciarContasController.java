/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteCliente;
import Persistence.PersistenceFuncionario;
import java.io.IOException;
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
@WebServlet(name = "GerenciarContasController", urlPatterns = {"/GerenciarContasController"})
public class GerenciarContasController extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        Object fAcao = session.getAttribute("FAcao");
        if(request.getParameter("UpdateCliente")!= null)
        {
        String login = request.getParameter("loginID");
        String senha = request.getParameter("senhaID");
        int cod = Integer.parseInt(request.getParameter("codigoID"));
        PersisteCliente c = new PersisteCliente();
        c.updateClienteLogin(login,senha,cod); 
        }
        else if(request.getParameter("DeleteCliente") != null)
        {
            int cod = Integer.parseInt(request.getParameter("codigoID"));
            PersisteCliente p = new PersisteCliente();
            p.deleteClienteByID(cod);
        }
        
       if(request.getParameter("UpdateFuncionario") != null)
       {
        String flogin = request.getParameter("floginID");
        String fsenha = request.getParameter("fsenhaID");
        int fcod = Integer.parseInt(request.getParameter("fcodigoID"));
        Persistence.PersistenceFuncionario f = new PersistenceFuncionario();
        f.updateFuncionarioLogin(flogin, fsenha, fcod);
       }
        else if(request.getParameter("DeletarFuncionario") != null)
        {
              int fcod = Integer.parseInt(request.getParameter("fcodigoID"));
              Persistence.PersistenceFuncionario f = new PersistenceFuncionario();
              f.deleteFuncionarioByID(fcod);
        }
       

        RequestDispatcher view = request.getRequestDispatcher( "/Gerenciar/GerenciarContas.jsp" ); // repassar a chamada o JSP
        view.forward( request , response );
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
