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
public class Tabuada extends TagSupport{ 
    private int numero;
    @Override
    public int doStartTag(){
        JspWriter jspWriter = pageContext.getOut();
        String imprimir="<h1> Tabuada do número "+getNumero()+"</h1><br>";
        try{
            jspWriter.print(imprimir);
            
            for (int i=1 ;i<=9;i++){
                jspWriter.println(getNumero()+" x "+i+" = "+i*getNumero()+"<br>");
                }
        } catch (Exception e){
        Logger.getLogger(Tabuada.class.getName()).log(Level.SEVERE, null, e);
        }
     return SKIP_BODY;   
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }
}
