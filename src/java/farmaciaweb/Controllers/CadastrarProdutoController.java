/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import Persistence.PersisteFornecedor;
import Persistence.PersistenceProduto;
import farmaciaweb.Models.Produtos;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Filipe
 */
@WebServlet(name = "CadastrarProdutoController", urlPatterns = {"/CadastrarProdutoController"})
public class CadastrarProdutoController extends HttpServlet {

   
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
        
       SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
       try{
       String nome = request.getParameter("nomeID");
       Date validade = formatter.parse(request.getParameter("validadeID"));
       int quantidade = Integer.parseInt(request.getParameter("quantidadeID"));
       String categoria = request.getParameter("categoriaID");
       String fornecedor = request.getParameter("fornecedorID");
       long Preco = Long.parseLong(request.getParameter("precoID"));
            
       Produtos p = new Produtos();
       p.setCategoria(categoria);
       p.setCodigo(quantidade);
       p.setNome(nome);
       p.setPreco(Preco);
       p.setQuantidade(quantidade);
       p.setValidade(validade);
       Persistence.PersisteFornecedor fornecedorObject = new PersisteFornecedor();
       p.setFornecedores(fornecedorObject.getCodFornecedorByName(fornecedor));
       Persistence.PersistenceProduto pe = new PersistenceProduto();
       pe.InsertProduto(p);
        }
        catch(Exception ex)
        {
            System.out.println("Não cadastrou "+ex.toString());
                    
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
