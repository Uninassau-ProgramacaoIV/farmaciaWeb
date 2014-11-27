/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistence;

import farmaciaweb.Models.Clientes;
import farmaciaweb.Models.Produtos;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Filipe
 */
public class PersistenceProduto {
    
      public void InsertProduto(Produtos p)
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(p);
        session.getTransaction().commit();
    }
        public List<Produtos> getAllProdutos()
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Produtos");
        List<Produtos> produtos = query.list();
        session.getTransaction().commit();
        return produtos;
    }
     
    
}
