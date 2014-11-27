/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Persistence;

import farmaciaweb.Models.Clientes;
import farmaciaweb.Models.Funcionarios;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Filipe
 */
public class PersistenceFuncionario {
    
      public void InsertFucionario(Funcionarios f)
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(f);
        session.getTransaction().commit();
    }
       public boolean ExistsFuncionarioByLogin(String login, String senha)
    {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       Query query = session.createQuery("from Funcionarios where login_funcionario = :login and senha = :senha");
       query.setParameter("login", login);
       query.setParameter("senha", senha);
       Funcionarios funcionario = (Funcionarios)query.uniqueResult();
       session.getTransaction().commit();
       if(funcionario != null)
           return true;
       return false;
    }
        public List<Funcionarios> getAllFuncionarios()
    {
        Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Funcionarios");
        List<Funcionarios> funcionarios = query.list();
        session.getTransaction().commit();
        return funcionarios;
    }
        
         public void updateFuncionarioLogin(String login, String senha, int cod_funcionario)
     {
         Session session = DAOfarmaciaweb.getSessionFactory().openSession();
         String hql = "UPDATE Funcionarios set login_funcionario = :login ,senha = :senha "  + 
             "WHERE id = :id";
          session.beginTransaction();
          Query query = session.createQuery(hql);
          query.setParameter("login", login);
          query.setParameter("senha", senha);
          query.setParameter("id", cod_funcionario);
          int result = query.executeUpdate();
          session.getTransaction().commit();
     }
         
    public void deleteFuncionarioByID(int id)
    {
       Session session = DAOfarmaciaweb.getSessionFactory().getCurrentSession();
       session.beginTransaction();
       String hql = "DELETE FROM Funcionarios "  + 
             "WHERE id = :id";
       Query query = session.createQuery(hql);
       query.setParameter("id", id);
       int result = query.executeUpdate();
       session.getTransaction().commit();
    }
}
