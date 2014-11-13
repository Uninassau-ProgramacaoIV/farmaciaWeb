/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.farmaciaweb.dao.produto;

import br.com.farmaciaweb.dao.produto.ProdutoModel;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Filipe
 */
public class ProdutosPersistence implements IPersistenceProdutos{

    java.sql.Connection con;
    java.sql.Statement comando;
    java.sql.ResultSet registro;
    
    public ProdutosPersistence()
    {
         try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch(Exception e){
         System.err.println("Não foi possivel estabelcer uma conexão" + e.getMessage());
        }
        try
        {
            con = DriverManager.getConnection("jdbc:odbc:FarmaciaOnline","","");
            comando = con.createStatement();
        }
        catch(Exception e){
            System.err.println("Não foi possivel estabelcer uma conexão" + e.getMessage());
        }
    }
    
    public void conexao(){
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }
        catch(Exception e){
         System.err.println("Não foi possivel estabelcer uma conexão" + e.getMessage());
        }
        try
        {
            con = DriverManager.getConnection("jdbc:odbc:FarmaciaOnline.accdb","","");
            comando = con.createStatement();
        }
        catch(Exception e){
            System.err.println("Não foi possivel estabelcer uma conexão" + e.getMessage());
        }
    }
    
    @Override
    public  void Insert(ProdutoModel obj) {
         try
        {
            PreparedStatement comandoSQL;
            comandoSQL = con.prepareStatement("INSERT INTO Tab_Produto(Nome,ID_Categoria,Preco,Fornecedor,Quantidade,Validade)"+ "Values(?,?,?,?,?,?)");
            comandoSQL.setString(1, obj.getNome());
            comandoSQL.setInt(2, Integer.parseInt(obj.getCategoria()));
            comandoSQL.setDouble(3, obj.getPreco());
            comandoSQL.setString(4, obj.getFabricante());
            comandoSQL.setInt(5, obj.getQuantidade());
            comandoSQL.setString(6,obj.getValidade());
            comandoSQL.executeUpdate();
        }
        catch(Exception e){
        System.out.println("Erro" + e.getMessage());
        }
    }

    @Override
    public void Delete(int cod_produto) {
       
    }

    @Override
    public List<Object> ListAllProducts() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProdutoModel getOne(int filter) {
        ProdutoModel p = new ProdutoModel();
       return p;
    }
    
    
}
