package br.com.farmaciaweb.controller.produto;

import br.com.farmaciaweb.dao.produto.ProdutoModel;
import br.com.farmaciaweb.dao.produto.ProdutosPersistence;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Filipe
 */
public class ProdutosController extends HttpServlet {
 
    static int Message;
    ProdutoModel produto;

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
        try {
            String nome_produto = request.getParameter("fnameProduto");
            String categoria = request.getParameter("fcategoria");
            String fabricante = request.getParameter("ffabricante");
            double preco = Double.parseDouble(request.getParameter("fpreco"));
            int quantidade = Integer.parseInt(request.getParameter("fquantidade"));
            String validade = (request.getParameter("fValidade"));

            produto.setNome(nome_produto);
            produto.setCategoria(categoria);
            produto.setFabricante(fabricante);
            produto.setPreco(preco);
            produto.setQuantidade(quantidade);
            produto.setValidade(validade);
            
            ProdutosPersistence p = new ProdutosPersistence();
            p.Insert(produto);
            
            RequestDispatcher view = request.getRequestDispatcher("/FarmaciaView/FarmaciaInsertProdutoView.jsp");
            Message = 0;
            request.setAttribute("Mensagem",Message);
            view.forward(request, response);
               
        } catch (Exception ex) {
            Message = 1;
             request.setAttribute("Mensagem",Message);
             RequestDispatcher view = request.getRequestDispatcher("/FarmaciaView/FarmaciaInsertProdutoView.jsp");
             view.forward(request, response);
        }
    }

    @Override
    public void init() {
        produto = new ProdutoModel();
    }

    @Override
    public void destroy() {
        produto = null;
    }
}



