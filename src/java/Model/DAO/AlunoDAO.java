package Model.DAO;

import Model.Aluno;
import Model.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ferreira
 */
public class AlunoDAO {
    private Connection conexao;

    public AlunoDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    private boolean validaCreate(Aluno aluno){
        try {
            String sql = "SELECT * FROM alunos WHERE cpf=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, aluno.getCpf());            
            ResultSet rs = ps.executeQuery();
            
            if(!rs.next()) {
                sql = "SELECT * FROM alunos WHERE email=?";
                ps = conexao.prepareStatement(sql);
                ps.setString(1, aluno.getEmail());
                rs = ps.executeQuery();
                if(!rs.next()) {
                    sql = "SELECT * FROM alunos WHERE celular=?";
                    ps = conexao.prepareStatement(sql);
                    ps.setString(1, aluno.getCelular());
                    rs = ps.executeQuery();
                    if(!rs.next()) {
                        sql = "SELECT * FROM alunos WHERE login=?";
                        ps = conexao.prepareStatement(sql);
                        ps.setString(1, aluno.getLogin());
                        rs = ps.executeQuery();
                        if(!rs.next()){
                            return true;
                        }
                    }
                }
            }
            
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;           
    }
    
    public boolean create(Aluno aluno) {
        
        try {
            if(this.validaCreate(aluno)){

            String sql = "INSERT INTO alunos(nome, cpf, email, celular, cidade, cep, bairro, endereco, login, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setString(1, aluno.getNome());
            ps.setString(2, aluno.getCpf());
            ps.setString(3, aluno.getEmail());
            ps.setString(4, aluno.getCelular());
            ps.setString(5, aluno.getCidade());
            ps.setString(6, aluno.getCep());
            ps.setString(7, aluno.getBairro());
            ps.setString(8, aluno.getEndereco());
            ps.setString(9, aluno.getLogin());
            ps.setString(10, aluno.getSenha());   
            
            ps.executeUpdate();
            ps.close();
            return true;
            }   
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
            
        }
        return false;
    }
    
    public Aluno getAlunoPorId(int id) {
        Aluno aluno = new Aluno();
        try {
            String sql = "SELECT * FROM alunos WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                aluno.setId(rs.getInt("id"));
                aluno.setCpf(rs.getString("cpf") );
                aluno.setNome(rs.getString("nome") );
                aluno.setEmail(rs.getString("email") );
                aluno.setCelular(rs.getString("celular") );
                aluno.setLogin(rs.getString("login") );
                aluno.setSenha(rs.getString("senha") );
                aluno.setEndereco(rs.getString("endereco") );
                aluno.setCidade(rs.getString("cidade") );
                aluno.setBairro(rs.getString("bairro") );
                aluno.setCep(rs.getString("cep") );
                aluno.setComentario(rs.getString("comentario") );
                aluno.setAprovado(rs.getString("aprovado").charAt(0) );
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return aluno;
    }
    
    public Aluno getAlunoPorLogin(String login) {
        Aluno aluno = new Aluno();
        try {
            String sql = "SELECT * FROM alunos WHERE login = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, login);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                aluno.setId(rs.getInt("id"));
                aluno.setCpf(rs.getString("cpf") );
                aluno.setNome(rs.getString("nome") );
                aluno.setEmail(rs.getString("email") );
                aluno.setCelular(rs.getString("celular") );
                aluno.setLogin(rs.getString("login") );
                aluno.setSenha(rs.getString("senha") );
                aluno.setEndereco(rs.getString("endereco") );
                aluno.setCidade(rs.getString("cidade") );
                aluno.setBairro(rs.getString("bairro") );
                aluno.setCep(rs.getString("cep") );
                aluno.setComentario(rs.getString("comentario") );
                aluno.setAprovado(rs.getString("aprovado").charAt(0) );
            }
            else {
                aluno = null;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return aluno;
    }

    public ArrayList<Aluno> getLista() {
        ArrayList<Aluno> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM alunos");

            
            while(rs.next()) {
                
                Aluno aluno = new Aluno();
                
                aluno.setId(rs.getInt("id"));
                aluno.setCpf(rs.getString("cpf") );
                aluno.setNome(rs.getString("nome") );
                aluno.setEmail(rs.getString("email") );
                aluno.setCelular(rs.getString("celular") );
                aluno.setLogin(rs.getString("login") );
                aluno.setSenha(rs.getString("senha") );
                aluno.setEndereco(rs.getString("endereco") );
                aluno.setCidade(rs.getString("cidade") );
                aluno.setBairro(rs.getString("bairro") );
                aluno.setCep(rs.getString("cep") );
                aluno.setComentario(rs.getString("comentario") );
                aluno.setAprovado(rs.getString("aprovado").charAt(0) );
                
                resultado.add(aluno);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Aluno aluno) {
        try {
            Aluno alunoNoBanco = this.getAlunoPorId(id);
            
            
            String sql = "UPDATE alunos SET cpf=?, nome=?, email=?, celular=?, login=?, senha=?, endereco=?, cidade=?, bairro=?, cep=?, comentario=?, aprovado=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (!"".equals(aluno.getCpf())) {
                ps.setString(1, aluno.getCpf());
            } else { 
                ps.setString(1, alunoNoBanco.getCpf());
            }
            
            if (!"".equals(aluno.getNome())) {
                ps.setString(2, aluno.getNome());
            } else { 
                ps.setString(2, alunoNoBanco.getNome());
            }
            
            if (!"".equals(aluno.getEmail())) {
                ps.setString(3, aluno.getEmail());
            } else { 
                ps.setString(3, alunoNoBanco.getEmail());
            }
            
            if (!"".equals(aluno.getCelular())) {
                ps.setString(4, aluno.getCelular());
            } else { 
                ps.setString(4, alunoNoBanco.getCelular());
            }
            
            if (!"".equals(aluno.getLogin())) {
                ps.setString(5, aluno.getLogin());
            } else { 
                ps.setString(5, alunoNoBanco.getLogin());
            }
            
            if (!"".equals(aluno.getSenha())) {
                ps.setString(6, aluno.getSenha());
            } else { 
                ps.setString(6, alunoNoBanco.getSenha());
            }
            if (!"".equals(aluno.getEndereco())) {
                ps.setString(7, aluno.getEndereco());
            } else { 
                ps.setString(7, alunoNoBanco.getEndereco());
            }
            
            if (!"".equals(aluno.getCidade())) {
                ps.setString(8, aluno.getCidade());
            } else { 
                ps.setString(8, alunoNoBanco.getCidade());
            }
            
            if (!"".equals(aluno.getBairro())) {
                ps.setString(9, aluno.getBairro());
            } else { 
                ps.setString(9, alunoNoBanco.getBairro());
            }
            
            if (!"".equals(aluno.getCep())) {
                ps.setString(10, aluno.getCep());
            } else { 
                ps.setString(10, alunoNoBanco.getCep());
            }
            
            if (!"".equals(aluno.getComentario())) {
                ps.setString(11, aluno.getComentario());
            } else { 
                ps.setString(11, alunoNoBanco.getComentario());
            }
            
            if (aluno.getAprovado() != '\0') {
                ps.setString(12, String.valueOf(aluno.getAprovado()));
            } else { 
                ps.setString(12, String.valueOf(alunoNoBanco.getAprovado()));
            }
            ps.setInt(13, id);
            ps.executeUpdate();
            ps.close();
            return true;

            
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        } 
        return false;
        

    }


    public boolean deleteAlunoPorId(int id) {
        try {
            String sql = "DELETE FROM alunos WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
      
            ps.executeUpdate();
            ps.close();
            return true;
            
        } catch(SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }

    
}
