/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistence;

import farmaciaweb.Models.Fornecedores;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Filipe
 */
public class PersisteFornecedor {
    
     public void InsertFornecedor(Fornecedores f)
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(f);
        session.getTransaction().commit();
    }
     
     public Fornecedores getCodFornecedorByName(String name)
     {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       Query query = session.createQuery("from Fornecedores where nome = :nome ");
       query.setParameter("nome", name);
       Fornecedores fornecedor = (Fornecedores)query.uniqueResult();
       session.getTransaction().commit();
       return fornecedor;
     }
}
