package com.teste.Cursos;

import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author luiz.souza
 */
public class Cursos {
    private String ultimoLancamento= "Java para web iii";
    private List<String> listaCursos = new ArrayList<String>();

    
    public Cursos(){
        listaCursos.add("Java");
        listaCursos.add("Android");
        listaCursos.add("Flex");
        listaCursos.add("Basic");
        listaCursos.add("dEPLPHI");
    }
    public String ultimoLancamento(){
        return ultimoLancamento;
    }

    public String getUltimoLancamento() {
        return ultimoLancamento;
    }

    public void setUltimoLancamento(String ultimoLancamento) {
        this.ultimoLancamento = ultimoLancamento;
    }

    public List<String> getListaCursos() {
        return listaCursos;
    }

    public void setListaCursos(List<String> listaCursos) {
        this.listaCursos = listaCursos;
    }
}
