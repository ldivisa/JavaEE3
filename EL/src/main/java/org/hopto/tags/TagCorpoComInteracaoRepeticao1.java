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
public class TagCorpoComInteracaoRepeticao1 extends BodyTagSupport {

    /**
     * @return the multiplicador
     */
    public int getMultiplicador() {
        return multiplicador;
    }

    /**
     * @param multiplicador the multiplicador to set
     */
    public void setMultiplicador(int multiplicador) {
        this.multiplicador = multiplicador;
    }

    /**
     * @return the contador
     */
    private int multiplicador;
    public int getContador() {
        return contador;
    }

    /**
     * @param contador the contador to set
     */
    public void setContador(int contador) {
        this.contador = contador;
    }
    private int contador;
    
    
    @Override
    public int doStartTag(){
       // setContador(1);
        multiplicador=20;
        contador = getContador();
        pageContext.setAttribute("multiplicador", getMultiplicador());
         pageContext.setAttribute("contador",contador);
        return EVAL_BODY_INCLUDE;
    }
    
    
    @Override
    public int doAfterBody() throws JspException{
                
        if (contador-- >1){
         pageContext.setAttribute("multiplicador", getMultiplicador());
         pageContext.setAttribute("contador",contador);
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
                Logger.getLogger(TagCorpoComInteracaoRepeticao1.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return EVAL_PAGE;
    }
    
}
