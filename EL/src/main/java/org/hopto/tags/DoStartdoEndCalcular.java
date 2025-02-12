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
public class DoStartdoEndCalcular extends TagSupport{
    private int num1,num2, resultado;
    @Override
    public int doStartTag(){
        setNum1(10);
        setNum2(20);
        return SKIP_BODY;
    }
    


    @Override
    public int doEndTag(){
        setResultado(getNum1()+getNum2());
        JspWriter jspWriter = pageContext.getOut();
        String imprimir = "<br> A soma de "+getNum1()+" e "+ getNum2()+" é igual a "+getResultado()+" <br><br>";
        
        try {
            jspWriter.print(imprimir);
        } catch (IOException ex) {
            Logger.getLogger(DoStartdoEndCalcular.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
    }

    public int getNum1() {
        return num1;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }

    public int getNum2() {
        return num2;
    }

    public void setNum2(int num2) {
        this.num2 = num2;
    }

    public int getResultado() {
        return resultado;
    }

    public void setResultado(int resultado) {
        this.resultado = resultado;
    }

    
}
