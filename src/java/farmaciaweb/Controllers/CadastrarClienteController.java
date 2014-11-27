/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteCliente;
import farmaciaweb.Models.Clientes;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Filipe
 */
public class CadastrarClienteController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String nome = request.getParameter("nomeID");
       String sobrenome = request.getParameter("sobreNomeID");
       int idade = Integer.parseInt(request.getParameter("idadeID"));
       String cidade = request.getParameter("cidadeID");
       String bairro = request.getParameter("bairroID");
       String rua =  request.getParameter("ruaID");
       int numero = Integer.parseInt(request.getParameter("numeroID"));
       String telefone = request.getParameter("telefoneID");
       String login_cliente = request.getParameter("loginID");
       String senha = request.getParameter("passwordID");
       
       Clientes x = new Clientes();
       x.setBairro(bairro);
       x.setCidade(cidade);
       x.setIdade(idade);
       x.setLoginCliente(login_cliente);
       x.setNumero(numero);
       x.setSenha(senha);
       x.setSobrenome(sobrenome);
       x.setTelefone(telefone);
       x.setNome(nome);
       x.setRua(rua);
    
       Persistence.PersisteCliente pe = new PersisteCliente();
       pe.InsertCliente(x);
        HttpSession session = request.getSession();
       if(session.getAttribute("Login").equals("NaoLogado")){
       RequestDispatcher view = request.getRequestDispatcher( "/Login/Login.jsp" ); // repassar a chamada o JSP
       view.forward( request , response );
       }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
