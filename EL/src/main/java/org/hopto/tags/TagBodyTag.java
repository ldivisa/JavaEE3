/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.BodyContent;
import jakarta.servlet.jsp.tagext.BodyTag;
import jakarta.servlet.jsp.tagext.Tag;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Loja
 */
public class TagBodyTag implements BodyTag{

    /**
     * @return the PageContext
     */
    public PageContext getPageContext() {
        return pageContext;
    }

    /**
     * @return the bodyContent
     */
    public BodyContent getBodyContent() {
        return bodyContent;
    }
    private BodyContent bodyContent;
    private PageContext pageContext;
    @Override
    public void setBodyContent(BodyContent bc) {
        bodyContent = bc;
    }

    @Override
    public void doInitBody() throws JspException {
        
    }

    @Override
    public int doAfterBody() throws JspException {
        String conteudo =  bodyContent.getString();
        JspWriter jspWriterOut = bodyContent.getEnclosingWriter();
        if (conteudo != null){
            try {
                jspWriterOut.println(conteudo);
            } catch (IOException ex) {
                Logger.getLogger(TagBodyTag.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return SKIP_BODY;
    }

    @Override
    public void setPageContext(PageContext pc) {
        pageContext = pc;
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
       return EVAL_BODY_AGAIN;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }

    @Override
    public void release() {
        
    }
}
