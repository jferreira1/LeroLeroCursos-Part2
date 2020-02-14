/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Ferreira
 */
public class Turma {
    private int id;
    private int instrutores_id;
    private int cursos_id;
    private Date data_inicio;
    private Date data_final;
    private int carga_horaria;

    public Turma() {
        this.id = 0;
        this.instrutores_id = 0;
        this.cursos_id = 0;
        this.data_inicio = null;
        this.data_final = null;
        this.carga_horaria = 0;
    }

    public Turma(int instrutores_id, int cursos_id) {
        this.id=0;
        this.instrutores_id = instrutores_id;
        this.cursos_id = cursos_id;
        this.data_inicio = null;
        this.data_final = null;
        this.carga_horaria = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInstrutores_id() {
        return instrutores_id;
    }

    public void setInstrutores_id(int instrutores_id) {
        this.instrutores_id = instrutores_id;
    }

    public int getCursos_id() {
        return cursos_id;
    }

    public void setCursos_id(int cursos_id) {
        this.cursos_id = cursos_id;
    }

    public Date getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(Date data_inicio) {
        this.data_inicio = data_inicio;
    }

    public Date getData_final() {
        return data_final;
    }

    public void setData_final(Date data_final) {
        this.data_final = data_final;
    }

    public int getCarga_horaria() {
        return carga_horaria;
    }

    public void setCarga_horaria(int carga_horaria) {
        this.carga_horaria = carga_horaria;
    }
    
    
    
    
}
