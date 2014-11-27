/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package farmaciaweb.Controllers;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 *
 * @author Filipe
 */
@WebFilter( "/LoginController" )
public class AutenticaFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       
        long ini = System.currentTimeMillis(); // pega o tempo atual
        chain.doFilter( request , response ); // executa o Servlet
        long fim = System.currentTimeMillis(); // pega o tempo atual
        System.out.println( "Desempenho: " + (fim - ini) + " ms" ); // mostra o tempo de execução do Servlet
    }

    @Override
    public void destroy() {
        
    }
    
    
    
}
