
package Model;

/**
 *
 * @author Ferreira
 */
public class Instrutor {
    private int id;
    private String nome;
    private String email;
    private int valor_hora;
    private String login;
    private String senha;
    private String experiencia;

    public Instrutor() {
        this.id=0;
        this.nome = "";
        this.email = "";
        this.valor_hora = 0;
        this.login = "";
        this.senha = "";
        this.experiencia = "";
    }

    public Instrutor(String nome, String email, String login, String senha) {
        this.id=0;
        this.nome = nome;
        this.email = email;
        this.login = login;
        this.senha = senha;
        this.valor_hora = 0;
        this.experiencia = "";
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getValor_hora() {
        return valor_hora;
    }

    public void setValor_hora(int valor_hora) {
        this.valor_hora = valor_hora;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getExperiencia() {
        return experiencia;
    }

    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }
    
    
    
    
}
