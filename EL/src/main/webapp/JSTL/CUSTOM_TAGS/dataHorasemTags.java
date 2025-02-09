
import static java.lang.System.out;
import java.util.Calendar;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author luiz
 */
public class dataHorasemTags {
    private String[] diaSemana={"Domingo","Segunda", "Terça","Quarta","Quinta","Sexta","Sábado"};
    private String[] mesAno={"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    Calendar calendar = Calendar.getInstance();
    private String hoje= calendar.getTime().toString();

public void dataHorasemTags(){
out.print("Hoje ");
}


    public String[] getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(String[] diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String[] getMesAno() {
        return mesAno;
    }

    public void setMesAno(String[] mesAno) {
        this.mesAno = mesAno;
    }

    public String getHoje() {
        return hoje;
    }

    public void setHoje(String hoje) {
        this.hoje = hoje;
    }
    
}
