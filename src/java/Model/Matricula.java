package Model;

import java.sql.Date;

/**
 *
 * @author Ferreira
 */
public class Matricula {
    int id;
    private int turmas_id;
    private int alunos_id;
    private Date data_matricula;
    private float nota;

    public Matricula() {
        this.id = 0;
        this.turmas_id = 0;
        this.alunos_id = 0;
        this.data_matricula = null;
        this.nota = -1;
    }

    public Matricula(int turmas_id, int alunos_id) {
        this.id = 0;
        this.turmas_id = turmas_id;
        this.alunos_id = alunos_id;
        this.data_matricula = null;
        this.nota = -1;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTurmas_id() {
        return turmas_id;
    }

    public void setTurmas_id(int turmas_id) {
        this.turmas_id = turmas_id;
    }

    public int getAlunos_id() {
        return alunos_id;
    }

    public void setAlunos_id(int alunos_id) {
        this.alunos_id = alunos_id;
    }

    public Date getData_matricula() {
        return data_matricula;
    }

    public void setData_matricula(Date data_matricula) {
        this.data_matricula = data_matricula;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }
    
    
    
    
}
