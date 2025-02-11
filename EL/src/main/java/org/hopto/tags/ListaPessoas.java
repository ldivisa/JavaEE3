/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;


import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.sql.*;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author luiz.souza
 */
public class ListaPessoas extends TagSupport{ 
    private int numero;
    String  senhaBanco=new String(Base64.getDecoder().decode("Q2FyYWxob0Bwb3N0Z3JlczE="));
        String  url="jdbc:postgresql://localhost/javaWebIII";
        String  driver="org.postgresql.Driver";
        String  user="postgres";
        String cor0 = "lightgreen";
        String cor1 = "lightgrey";
        String cor2 = "lightblue";
        String query = "select * from pessoas";
        ResultSet resultado = null;
        Connection connection = null;
        Statement statement = null;
    @Override
    public int doStartTag(){
        JspWriter jspWriter = pageContext.getOut();

        try {
            jspWriter.print("<br><h1>Lista de Pessoas - bd</h1>");
            Class.forName(driver);
            connection = DriverManager.getConnection(url,user,senhaBanco);
            statement = (Statement) connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            resultado = statement.executeQuery(query);

            int contador=0;
            jspWriter.print("<table border=\'1\' style=\"text-align: center\"><thead style=\"background-color: "+cor0+"\"><tr ><td>Código</td><td >Nome</td><td>Email</td><td>Data Nascimento</td></tr></thead>");
            while(resultado.next()){
                contador +=1;
                
            String cor_escolhida = contador % 2 == 0 
                    ? cor1
                    : cor2;
            jspWriter.print("<tr style=\"background-color: "+cor_escolhida+"\">");
            
             jspWriter.print("<td>"+resultado.getString("pesCodigo")+  "</td>");
             jspWriter.print("<td>"+resultado.getString("pesNome")+  "</td>");
             jspWriter.print("<td>"+resultado.getString("pesEmail")+  "</td>");
             jspWriter.print("<td>"+resultado.getString("pesdatanasc")+  "</td>");   
            }
        jspWriter.print("<tr> <td colspan=\"4\"> O total de registros é "+ contador+ "</td></tr>");
                      
            jspWriter.print("</table>");
            } catch (IOException | SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ListaPessoas.class.getName()).log(Level.SEVERE, null, ex);
        }
    return SKIP_BODY;     
    }
    
    @Override
    public void release(){
        
        try {
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(ListaPessoas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

}
