/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 *
 * @author Loja
 */
public class PrimeiraTagSimples2 extends SimpleTagSupport {

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
        StringWriter stringWriter = new StringWriter();
        getJspBody().invoke(stringWriter);
        String conteudoBody =  stringWriter.toString();
        JspWriter jspWriterOut = getJspContext().getOut();
        for (int i=0;i<10;i++){
        jspWriterOut.print(conteudoBody);}
                
                
               
    
    }
    
}
