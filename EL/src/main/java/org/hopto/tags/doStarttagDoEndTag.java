/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luiz.souza
 */
public class doStarttagDoEndTag extends TagSupport{
    @Override
    public int doStartTag(){
        JspWriter jspWriter = pageContext.getOut();
        String imprimir = "Imprimiu o conteudo de doStartTag - encontrou a tag<br><br>";
        
        try {
            jspWriter.print(imprimir);
        } catch (IOException ex) {
            Logger.getLogger(doStarttagDoEndTag.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
    }
    


    @Override
    public int doEndTag(){
        JspWriter jspWriter = pageContext.getOut();
        String imprimir = "Imprimiu o conteudo de doEndTag - encontrou quando finalizou a tag<br><br>";
        
        try {
            jspWriter.print(imprimir);
        } catch (IOException ex) {
            Logger.getLogger(doStarttagDoEndTag.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
    }

    
}
