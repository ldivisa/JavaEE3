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
public class TagCorpoSemInteracao extends TagSupport {
    @Override
    public int doStartTag(){
    JspWriter jspWriter = pageContext.getOut();
    
        try {
            jspWriter.print("<br>doStartTag<br>");
        } catch (IOException ex) {
            Logger.getLogger(TagCorpoSemInteracao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return EVAL_BODY_INCLUDE;
    }
    
    public int doEndTag(){
    JspWriter jspWriter = pageContext.getOut();
    
        try {
            jspWriter.print("<br>DoEndTag<br>");
        } catch (IOException ex) {
            Logger.getLogger(TagCorpoSemInteracao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return SKIP_BODY;
    }
    
}
