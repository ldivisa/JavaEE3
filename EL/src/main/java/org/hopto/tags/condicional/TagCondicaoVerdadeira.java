package org.hopto.tags.condicional;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import org.hopto.tags.condicional.*;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyContent;
import jakarta.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Loja
 */
public class TagCondicaoVerdadeira extends BodyTagSupport{
    
    @Override
    public int doStartTag()throws JspException{
        TagIf tagIf = (TagIf) findAncestorWithClass(this, TagIf.class);
                if (tagIf == null) {
                    throw new JspException("Erro, não tem if - tem que ter um IF ");
                } else if ( ! tagIf.ExisteCondicao()){
                    throw new JspException("Não tem condicional, tem que vir antes");
                }
        return EVAL_BODY_AGAIN;
    }
    
    @Override
    public int doAfterBody()throws JspException{
        TagIf tagIf = (TagIf) findAncestorWithClass(this, TagIf.class);
        if (tagIf.getCondicao()){
            BodyContent body = getBodyContent();
            JspWriter jspWriterOut = body.getEnclosingWriter();
            try {
                jspWriterOut.println(body.getString());
            } catch (IOException ex) {
                Logger.getLogger(TagCondicaoVerdadeira.class.getName()).log(Level.SEVERE, null, ex);
            }
                    
        }
        return SKIP_BODY;
    }
    
}
