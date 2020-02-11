package Model;

/**
 *
 * @author Ferreira
 */
public interface AlunoDAO {
    public Aluno create(String cpf, String nome, String email, String celular, String login, String senha);
    
    public void update(int id, Aluno aluno);
    
    public void delete(int id);
    
    public Aluno getByName(String name);
    
    public Aluno getById(int id);
}
