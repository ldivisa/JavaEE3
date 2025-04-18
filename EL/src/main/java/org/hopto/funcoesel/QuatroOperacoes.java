/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.funcoesel;

/**
 *
 * @author Luiz
 */
public class QuatroOperacoes {

    private int num1,num2,resultado;    
    
public int soma(int num1, int num2){
resultado = num1+num2;
    return resultado; }

public int subtracao(int num1, int num2){
resultado = num1-num2;
    return resultado; }

public int multiplicacao(int num1, int num2){
resultado = num1*num2;
    return resultado; }

public int divisao(int num1, int num2){
resultado = num1/num2;
    return resultado; }
    /**
     * @return the num1
     */
    public int getNum1() {
        return num1;
    }

    /**
     * @param num1 the num1 to set
     */
    public void setNum1(int num1) {
        this.num1 = num1;
    }

    /**
     * @return the num2
     */
    public int getNum2() {
        return num2;
    }

    /**
     * @param num2 the num2 to set
     */
    public void setNum2(int num2) {
        this.num2 = num2;
    }

    /**
     * @return the resultado
     */
    public int getResultado() {
        return resultado;
    }

    /**
     * @param resultado the resultado to set
     */
    public void setResultado(int resultado) {
        this.resultado = resultado;
    }

}
