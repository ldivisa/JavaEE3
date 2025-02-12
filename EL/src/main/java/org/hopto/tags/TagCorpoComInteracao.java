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
public class TagCorpoComInteracao extends BodyTagSupport {
    @Override
    public int doStartTag(){
    JspWriter jspWriter = pageContext.getOut();
    
        try {
            jspWriter.print("<br>doStartTag<br>");
        } catch (IOException ex) {
            Logger.getLogger(TagCorpoComInteracao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return EVAL_BODY_BUFFERED;
    }
    
    public int doEndTag(){
    JspWriter jspWriter = pageContext.getOut();
    
        try {
            jspWriter.print("<br></b></font>doEndTag</br>");
        } catch (IOException ex) {
            Logger.getLogger(TagCorpoComInteracao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return EVAL_PAGE;
    }
    
    @Override
    public int doAfterBody() throws JspException{
        BodyContent bodyContent = getBodyContent();
        String body = bodyContent.getString();
        
        if(body !=null){
            JspWriter jspWriter = bodyContent.getEnclosingWriter();
            try {
                jspWriter.print("<br><FONT color=red>"+body);
            } catch (IOException ex) {
                Logger.getLogger(TagCorpoComInteracao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return SKIP_BODY;
    }
}
