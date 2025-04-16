/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags.condicional;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.BodyTagSupport;

/**
 *
 * @author Loja
 */
public class TagAnaliseCondicao extends BodyTagSupport{
    
    @Override
    public int doStartTag()throws JspException{
        TagIf tagIf = (TagIf) findAncestorWithClass(this, TagIf.class);
                if (tagIf == null)
                    throw new JspException("Erro, não tem if - tem que ter um IF ");
        return EVAL_BODY_AGAIN;
    }
    
    @Override
    public int doAfterBody()throws JspException{
        TagIf tagIf = (TagIf) findAncestorWithClass(this, TagIf.class);
        String bodyString = getBodyContent().getString();
        if (bodyString.trim().equals("true")){
            tagIf.setCondicao(true);
        } else{
            tagIf.setCondicao(false);
        }
        return SKIP_BODY;
    }
    
}
