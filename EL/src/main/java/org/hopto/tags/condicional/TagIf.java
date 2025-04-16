/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags.condicional;

import jakarta.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Loja
 */
public class TagIf extends TagSupport{
    private boolean condicao;
    private boolean existeCondicao;
    
    public int doStartTag(){
    return EVAL_BODY_INCLUDE;
    }
    
    
    
    /**
     * @return the condicao
     */
    public boolean getCondicao() {
        return condicao;
    }

    /**
     * @param condicao the condicao to set
     */
    public void setCondicao(boolean condicao) {
        this.condicao = condicao;
        existeCondicao = true;
    }

    /**
     * @return the existeCondicao
     */
    public boolean ExisteCondicao() {
        return existeCondicao;
    }

    /**
     * @param existeCondicao the existeCondicao to set
     */
    public void setExisteCondicao(boolean existeCondicao) {
        this.existeCondicao = existeCondicao;
    }
      
    
}
