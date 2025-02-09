/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author luiz.souza
 */

public class tagTeste extends TagSupport {
    @Override
        public int doStartTag(){
            JspWriter jspWriter = pageContext.getOut();
            String imprimir = "Teste de saída via tld- SKIP_BODY ";
        try {
            jspWriter.println(imprimir);
        } catch (IOException ex) {
            Logger.getLogger(tagTeste.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
        }
}
