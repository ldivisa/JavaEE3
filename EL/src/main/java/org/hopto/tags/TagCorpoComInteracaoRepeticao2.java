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
public class TagCorpoComInteracaoRepeticao2 extends BodyTagSupport {

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
    public int doAfterBody() throws JspException{
                
        if (contador-- >0){
         
         BodyContent bc = getBodyContent();
         String body = bc.getString();
         
         if (body != null){
             JspWriter jspWriterOut = bc.getEnclosingWriter();
             
             try {
                 jspWriterOut.print(body);
                 bc.clearBody();
             } catch (IOException ex) {
                 Logger.getLogger(TagCorpoComInteracaoRepeticao2.class.getName()).log(Level.SEVERE, null, ex);
             }
            
         pageContext.setAttribute("multiplicador", getMultiplicador());
         pageContext.setAttribute("contador",contador);
         }
            return EVAL_BODY_AGAIN;
                        }
        else
            return SKIP_BODY;
        }
         
        
    }

    
    

    
    
    

