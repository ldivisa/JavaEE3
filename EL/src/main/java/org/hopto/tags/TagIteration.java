/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.IterationTag;
import jakarta.servlet.jsp.tagext.Tag;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Loja
 */
public class TagIteration implements IterationTag{

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the sobrenome
     */
    public String getSobrenome() {
        return sobrenome;
    }

    /**
     * @param sobrenome the sobrenome to set
     */
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    private String nome, sobrenome;
    private PageContext pageContext;
    
    @Override
    public int doAfterBody() throws JspException {
        return SKIP_BODY;
    }

    @Override
    public void setPageContext(PageContext pc) {
       pageContext = pc;
    }

    @Override
    public void setParent(Tag tag) {
        
    }

    @Override
    public Tag getParent() {
        return null;
    }

    @Override
    public int doStartTag() throws JspException {
         return EVAL_BODY_AGAIN;
    }

    @Override
    public int doEndTag() throws JspException {
        JspWriter jspWriterOut = pageContext.getOut();
        try {
            jspWriterOut.println("Nome Completo:"+ nome+" " + sobrenome);
        } catch (IOException ex) {
            Logger.getLogger(TagIteration.class.getName()).log(Level.SEVERE, null, ex);
        }
        return EVAL_PAGE;
    }

    @Override
    public void release() {
    
    }
    
    
}
