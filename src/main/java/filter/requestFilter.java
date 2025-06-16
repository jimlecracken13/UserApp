/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 *
 * @author djim
 */
@WebFilter("/*") //Intercepte toutes les réquêtes
public class requestFilter implements Filter{
    
    @Override
    public void init(FilterConfig filterConfig)
    {
        
    }
    @Override
     public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
         //on récuère la requête 
        HttpServletRequest req = (HttpServletRequest) request;
        System.out.println("Requête interceptée : " + req.getRequestURI());
        chain.doFilter(request, response);
    }
    @Override
    public void destroy() {}
    
}
