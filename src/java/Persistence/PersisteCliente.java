/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistence;
import farmaciaweb.Models.Clientes;
import farmaciaweb.Models.Fornecedores;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
/**
 *
 * @author Filipe
 */
public class PersisteCliente {
    
    public void InsertCliente(Clientes c)
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(c);
        session.getTransaction().commit();
    }
    
    public boolean ExistsClienteByLogin(String login, String senha)
    {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       Query query = session.createQuery("from Clientes where login_cliente = :login and senha = :senha");
       query.setParameter("login", login);
       query.setParameter("senha", senha);
       Clientes cliente = (Clientes)query.uniqueResult();
       session.getTransaction().commit();
       if(cliente != null)
           return true;
       return false;
    }
    
     public List<Clientes> getAllCliente()
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Clientes");
        List<Clientes> clientes = query.list();
        session.getTransaction().commit();
        return clientes;
    }
     
     public void updateClienteLogin(String login, String senha, int cod_cliente)
     {
         Session session = DAOfarmaciaweb.getSessionFactory().openSession();
         String hql = "UPDATE Clientes set login_cliente = :login ,senha = :senha "  + 
             "WHERE id = :id";
          session.beginTransaction();
          Query query = session.createQuery(hql);
          query.setParameter("login", login);
          query.setParameter("senha", senha);
          query.setParameter("id", cod_cliente);
          int result = query.executeUpdate();
          session.getTransaction().commit();
     }
     
      public int getClienteID(String login)
    {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       Query query = session.createQuery("codigo from Clientes where login_cliente = :login");
       query.setParameter("login", login);
       int cliente = (int)query.uniqueResult();
       session.getTransaction().commit();
       return cliente;
    }
      
       public void deleteClienteByID(int id)
    {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       String hql = "DELETE FROM Clientes "  + 
             "WHERE id = :id";
       Query query = session.createQuery(hql);
       query.setParameter("id", id);
       int result = query.executeUpdate();
       session.getTransaction().commit();
    }
}
