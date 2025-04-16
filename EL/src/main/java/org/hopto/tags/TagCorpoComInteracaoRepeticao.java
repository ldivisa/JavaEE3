/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyContent;
import jakarta.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luiz.souza
 */
public class TagCorpoComInteracaoRepeticao extends BodyTagSupport {
    private int contador;
    @Override
    public int doStartTag(){
        contador = 1;
        
        return EVAL_BODY_INCLUDE;
    }
    
    
    @Override
    public int doAfterBody() throws JspException{
        contador++;
        
        if (contador<=10){
            
            return EVAL_BODY_AGAIN;
        }
        else
        return SKIP_BODY;
    }
    
    @Override
    public int doEndTag(){
        if (bodyContent!=null){
            try {
                bodyContent.writeOut(bodyContent.getEnclosingWriter());//escrever conteudo de body
                bodyContent.clearBody();//limpar o buffer de body
            } catch (IOException ex) {
                Logger.getLogger(TagCorpoComInteracaoRepeticao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return EVAL_PAGE;
    }
    
}
