package Model.DAO;

import Model.Conexao;
import Model.Curso;
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
public class CursoDAO {
    private Connection conexao;

    public CursoDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    private boolean validaCreate(Curso curso){
        try {
            String sql = "SELECT * FROM cursos WHERE nome=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, curso.getNome());            
            ResultSet rs = ps.executeQuery();
            if(!rs.next()) {
                return true;
            }      
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;           
    }
    
    public boolean create(Curso curso) {
        
        try {
            if(this.validaCreate(curso)){

            String sql = "INSERT INTO cursos(nome, requisito, ementa, carga_horaria, preco) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setString(1, curso.getNome());
            ps.setString(2, curso.getRequisito());
            ps.setString(3, curso.getEmenta());
            ps.setInt(4, curso.getCarga_horaria());
            ps.setFloat(5, curso.getPreco());
            
            ps.executeUpdate();
            ps.close();
            return true;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
        
    }
    
    public Curso getCursoPorId(int id) {
        Curso curso = new Curso();
        try {
            String sql = "SELECT * FROM cursos WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                curso.setId(rs.getInt("id"));
                curso.setNome(rs.getString("nome") );
                curso.setRequisito(rs.getString("requisito") );
                curso.setEmenta(rs.getString("ementa") );
                curso.setCarga_horaria(rs.getInt("carga_horaria") );
                curso.setPreco(rs.getFloat("preco") );
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return curso;
    }

        public ArrayList<Curso> getLista() {
        ArrayList<Curso> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM cursos");
            while(rs.next()) {
                
                Curso curso = new Curso();
                curso.setId(rs.getInt("id"));
                curso.setNome(rs.getString("nome") );
                curso.setRequisito(rs.getString("requisito") );
                curso.setEmenta(rs.getString("ementa") );
                curso.setCarga_horaria(rs.getInt("carga_horaria") );
                curso.setPreco(rs.getFloat("preco") );
                
                resultado.add(curso);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Curso curso) {
        try {
            Curso cursoNoBanco = new Curso();
            cursoNoBanco = this.getCursoPorId(id);
            String sql = "UPDATE cursos SET nome=?, requisito=?, ementa=?, carga_horaria=?, preco=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (!"".equals(curso.getNome())) {
                ps.setString(1, curso.getNome());
            } else { 
                ps.setString(1, cursoNoBanco.getNome());
            }
            
            if (!"".equals(curso.getRequisito())) {
                ps.setString(2, curso.getRequisito());
            } else { 
                ps.setString(2, cursoNoBanco.getRequisito());
            }
            
            if (!"".equals(curso.getEmenta())) {
                ps.setString(3, curso.getEmenta());
            } else { 
                ps.setString(3, cursoNoBanco.getEmenta());
            }
            
            if (curso.getCarga_horaria() != 0) {
                ps.setInt(4, curso.getCarga_horaria());
            } else { 
                ps.setInt(4, cursoNoBanco.getCarga_horaria());
            }
            
            if (curso.getPreco() != 0) {
                ps.setFloat(5, curso.getPreco());
            } else { 
                ps.setFloat(5, cursoNoBanco.getPreco());
            }
            return true;
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }


    public boolean deleteCursoPorId(int id) {
        try {
            String sql = "DELETE FROM cursos WHERE id=?";
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
