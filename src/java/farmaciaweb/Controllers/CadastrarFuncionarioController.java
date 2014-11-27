/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteCliente;
import Persistence.PersistenceFuncionario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import farmaciaweb.Models.Funcionarios;

/**
 *
 * @author Filipe
 */
@WebServlet(name = "CadastrarFuncionarioController", urlPatterns = {"/CadastrarFuncionarioController"})
public class CadastrarFuncionarioController extends HttpServlet {

   
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
        String rua = request.getParameter("ruaID");
        int numero = Integer.parseInt(request.getParameter("numeroID"));
        String telefone = request.getParameter("telefoneID");
        String setor = request.getParameter("loginID");
        String login = request.getParameter("setorID");
        String senha = request.getParameter("passwordID");
        
        Funcionarios f = new Funcionarios();
        f.setBairro(bairro);
        f.setCidade(cidade);
        f.setIdade(idade);
        f.setLoginFuncionario(login);
        f.setNome(nome);
        f.setNumero(numero);
        f.setRua(rua);
        f.setSenha(senha);
        f.setSetor(setor);
        f.setSobrenome(sobrenome);
        f.setTelefone(telefone);
        
        Persistence.PersistenceFuncionario pe = new PersistenceFuncionario();
        pe.InsertFucionario(f);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
