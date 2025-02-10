/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luiz.souza
 */
public class TagInput extends TagSupport {
    
    
    
    private String type=null;
    private String name=null;
    private String value=null;
    private String id=null;

    @Override
    public int doStartTag(){
        JspWriter jspWriter = pageContext.getOut();
        try{
            String gerarInput;
            gerarInput="<input ";
            gerarInput+=" type=\"";
            gerarInput+=getType();
            gerarInput+="\"";
            gerarInput+=" name=\""+getName()+"\"";
            
            if(getValue()!=null){
            gerarInput+=" value=\""+getValue()+"\"";
        }
            if(getId()!=null){
            gerarInput+=" ide=\""+getId()+"\"";
        }
            
            gerarInput+=" />";
            jspWriter.print(gerarInput);
        }
        
        catch(Exception excecao){
          Logger.getLogger(TagTeste.class.getName()).log(Level.SEVERE, null, excecao);
        }
        
        
        return SKIP_BODY;
    }
    
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
                    
    
}
