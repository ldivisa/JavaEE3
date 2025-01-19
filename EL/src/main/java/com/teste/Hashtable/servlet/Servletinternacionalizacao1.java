package com.teste.Hashtable.servlet;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.teste.Hashtable.BeanLocalizacao;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 *
 * @author Luiz
 */
@WebServlet("/Servletinternacional1")
public class Servletinternacionalizacao1 extends HttpServlet {

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
        BeanLocalizacao beanLocalizacao = new BeanLocalizacao();
        
        //String idioma="es_ES";
        //String idioma = request.getParameter("idioma");
        //String idioma = request.getLocale().toString();
        String idioma="";
        if(request.getParameter("idioma")== null){
        idioma = request.getLocale().toString();
        } else {
        idioma =request.getParameter("idioma");
        }
        
        String mensagem = beanLocalizacao.getMensagem(idioma);
        String nome = beanLocalizacao.getNome(idioma);
        String endereco = beanLocalizacao.getEndereco(idioma);
        String fone = beanLocalizacao.getTeleFone(idioma);
        response.setContentType("text/html;charset="+beanLocalizacao.getCharset(idioma));
        response.setHeader("Content-Language", idioma);
        
        HttpSession session = request.getSession(true);
        session.setAttribute("nome", nome);
        session.setAttribute("mensagem", mensagem);
        session.setAttribute("fone", fone);
        session.setAttribute("endereco", endereco);
        session.setAttribute("idioma", idioma);
        request.getRequestDispatcher("/JSTL/fmt/hashTable/idiomaJavaBeanServlet.jsp").forward(request, response);
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
