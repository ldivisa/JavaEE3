/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 *
 * @author Loja
 */
public class PrimeiraTagSimples1 extends SimpleTagSupport {

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
    private String nome;
    @Override
    public void doTag() throws JspException,IOException{
        getJspContext().getOut().write("Teste de SimpleTagSupport"+ "  "+nome);
               
    
    }
    
}
