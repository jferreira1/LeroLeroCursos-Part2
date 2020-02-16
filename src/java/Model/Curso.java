/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Ferreira
 */
public class Curso {
    private int id;
    private String nome;
    private String requisito;
    private String ementa;
    private int carga_horaria;
    private float preco;

    public Curso() {
        this.id = 0;
        this.nome = "";
        this.requisito = "";
        this.ementa = "";
        this.carga_horaria = 0;
        this.preco = 0;
    }

    public Curso(String nome) {
        this.id = 0;
        this.nome = nome;
        this.requisito = "";
        this.ementa = "";
        this.carga_horaria = 0;
        this.preco = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRequisito() {
        return requisito;
    }

    public void setRequisito(String requisito) {
        this.requisito = requisito;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCarga_horaria() {
        return carga_horaria;
    }

    public void setCarga_horaria(int carga_horaria) {
        this.carga_horaria = carga_horaria;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
    
    
    
}
