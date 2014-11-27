/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteFornecedor;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import farmaciaweb.Models.Fornecedores;

/**
 *
 * @author Filipe
 */
@WebServlet(name = "CadastrarFornecedor", urlPatterns = {"/CadastrarFornecedor"})
public class CadastrarFornecedorController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String nome = request.getParameter("nomeID");
       String cidade= request.getParameter("cidadeID");
       String bairro= request.getParameter("bairroID");
       String rua= request.getParameter("ruaID");
       int numero = Integer.parseInt(request.getParameter("numeroID"));
       String telefone= request.getParameter("telefoneID");
       
       Fornecedores f = new Fornecedores();
       f.setBairro(bairro);
       f.setCidade(cidade);
       f.setNome(nome);
       f.setNumero(numero);
       f.setRua(rua);
       f.setTelefone(telefone);
       
       Persistence.PersisteFornecedor pe = new PersisteFornecedor();
       pe.InsertFornecedor(f);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
