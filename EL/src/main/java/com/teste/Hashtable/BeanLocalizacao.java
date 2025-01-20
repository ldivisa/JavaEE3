/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.teste.Hashtable;

import java.util.Hashtable;



/**
 *
 * @author Luiz
 */
public class BeanLocalizacao {
    private Hashtable hashTableMensagem;
    private Hashtable hashTableNome;
    private Hashtable hashTableEndereco;
    private Hashtable hashTableTelefone;
    private Hashtable hashTableCharset;
    
    public BeanLocalizacao(){
        hashTableEndereco = new Hashtable();
            hashTableEndereco.put("pt_BR", "Endereço");
            hashTableEndereco.put("en_US", "Address");
            hashTableEndereco.put("es_ES", "Direccion");
        
        hashTableMensagem = new Hashtable();
            hashTableMensagem.put("pt_BR", "Bem vindo");
            hashTableMensagem.put("en_US", "Welcome");
            hashTableMensagem.put("es_ES", "Bienvenido");
        
        hashTableNome = new Hashtable();
            hashTableNome.put("pt_BR", "Nome");
            hashTableNome.put("en_US", "Name");
            hashTableNome.put("es_ES", "Apellido");
        
        hashTableTelefone = new Hashtable();
            hashTableTelefone.put("pt_BR", "Telefone");
            hashTableTelefone.put("en_US", "Phone");
            hashTableTelefone.put("es_ES", "Teléfono");
            
        hashTableCharset = new Hashtable();
            hashTableCharset.put("pt_BR", "ISO-8559-1");
            hashTableCharset.put("en_US", "utf-8");
            hashTableCharset.put("es_ES", "utf-8");    
   }
   
    public String getMensagem(String idioma){
        return (String)hashTableMensagem.get(idioma);
    }
    
    public String getNome(String idioma){
        return (String)hashTableNome.get(idioma);
    }
    
    public String getEndereco(String idioma){
        return (String)hashTableEndereco.get(idioma);
    }
    
    public String getTeleFone(String idioma){
        return (String)hashTableTelefone.get(idioma);
    }
    
     public String getCharset(String idioma){
        return (String)hashTableCharset.get(idioma);
    }
}
