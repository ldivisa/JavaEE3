package com.teste.Hashtable.servlet;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.teste.Hashtable.BeanLocalizacao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Luiz
 */
public class Servletinternacionalizacao extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //String idioma="es_ES";
        //String idioma = request.getParameter("idioma");
        
        String idioma = request.getLocale().toString();
        BeanLocalizacao beanLocalizacao = new BeanLocalizacao();
        String mensagem = beanLocalizacao.getMensagem(idioma);
        String nome = beanLocalizacao.getNome(idioma);
        String endereco = beanLocalizacao.getEndereco(idioma);
        String fone = beanLocalizacao.getTeleFone(idioma);
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servletinternacionalizacao</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("Pais "+request.getLocale().getCountry());
            out.println("<h1>Servlet Servletinternacionalizacao at " + request.getContextPath() + "</h1>");
            out.println("<h1>Mensagem:</h1>"+mensagem);
            out.println("<h1>Nome:</h1>"+nome);
            out.println("<h1>Endereço:</h1>"+endereco);
            out.println("<h1>Telefone:</h1>"+fone);
            
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
