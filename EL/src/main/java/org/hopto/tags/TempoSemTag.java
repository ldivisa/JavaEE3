/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.hopto.tags;

import jakarta.servlet.jsp.JspWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.jsp.tagext.TagSupport;
import java.util.Calendar;

/**
 *
 * @author luiz.souza
 */

public class TempoSemTag extends TagSupport {
    @Override
        public int doStartTag(){
            JspWriter jspWriter = pageContext.getOut();
            String[] diasSemana={"Segunda", "Terça","Quarta","Quinta","Sexta","Sábado","Domingo"};
            String[] mesesAno={"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
        Calendar calendar = Calendar.getInstance();
            String diaSemana=diasSemana[calendar.get(Calendar.DAY_OF_WEEK)];
            String mesAno=mesesAno[calendar.get(Calendar.MONTH)];
            String mensagem ="";
            int horaAtual = calendar.get(Calendar.HOUR_OF_DAY);
            if (horaAtual>6 && horaAtual<12){mensagem="Bom dia";}
            if (horaAtual>11&&horaAtual<19){mensagem="Boa tarde";}
            if (horaAtual>18&&horaAtual<23){mensagem="Boa noite";}
            if (horaAtual<7){mensagem="Boa madrugada";}
        try {
            jspWriter.print(mensagem+"! "+ "Hoje é "+diaSemana+", "+calendar.get(Calendar.DAY_OF_MONTH)+" de "+mesAno+" de " +calendar.get(Calendar.YEAR)+" hora: "+
                    calendar.get(Calendar.HOUR_OF_DAY)+":"+calendar.get(Calendar.MINUTE));
        } catch (IOException ex) {
            Logger.getLogger(TempoSemTag.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
        }
}
