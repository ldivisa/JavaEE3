/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.Tag;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luiz.souza
 */
public class InterfaceTag implements Tag{
    
    private PageContext pc;
    
    @Override
    public void setPageContext(PageContext pc) {
    this.pc= pc;    
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
        JspWriter jspWriter = pc.getOut();
        try { 
            jspWriter.print("<h1Interface tag</h1><br>doStart -> iniciado");
        } catch (IOException ex) {
            Logger.getLogger(InterfaceTag.class.getName()).log(Level.SEVERE, null, ex);
        }

        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        
        return EVAL_PAGE;
        
    }

    @Override
    public void release() {
        
    }
    
}
