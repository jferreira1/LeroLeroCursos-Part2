package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ferreira
 */
public class MatriculaDAO {
    private Connection conexao;

    public MatriculaDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    
    public boolean create(Matricula matricula) {
        
        try {
            String sql = "INSERT INTO matriculas(turmas_id, alunos_id, data_matricula, nota) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setInt(1, matricula.getTurmas_id());
            ps.setInt(2, matricula.getAlunos_id());
            ps.setObject(3, matricula.getData_matricula());
            ps.setFloat(4, matricula.getNota());
            
            ps.executeUpdate();
            ps.close();
            return true;
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
        
    }
    
    public Matricula getMatriculaPorId(int id) {
        Matricula matricula = new Matricula();
        try {
            String sql = "SELECT * FROM matriculas WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                matricula.setId(rs.getInt("id"));
                matricula.setTurmas_id(rs.getInt("turmas_id") );
                matricula.setAlunos_id(rs.getInt("alunos_id") );
                matricula.setData_matricula((Date) rs.getObject("data_matricula"));
                matricula.setNota(rs.getInt("nota") );
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return matricula;
    }

        public ArrayList<Matricula> getLista() {
        ArrayList<Matricula> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM matriculas");
            while(rs.next()) {     
                Matricula matricula = new Matricula();
                
                matricula.setId(rs.getInt("id"));
                matricula.setTurmas_id(rs.getInt("turmas_id") );
                matricula.setAlunos_id(rs.getInt("alunos_id") );
                matricula.setData_matricula((Date) rs.getObject("data_matricula"));
                matricula.setNota(rs.getInt("nota") );
                
                resultado.add(matricula);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Matricula matricula) {
        try {
            Matricula matriculaNoBanco = new Matricula();
            matriculaNoBanco = this.getMatriculaPorId(id);
            String sql = "UPDATE matriculas SET turmas_id=?, alunos_id=?, data_matricula=?, nota=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (matricula.getTurmas_id() != 0) {
                ps.setInt(1, matricula.getTurmas_id());
            } else { 
                ps.setInt(1, matriculaNoBanco.getTurmas_id());
            }
            
            if (matricula.getAlunos_id() != 0) {
                ps.setInt(2, matricula.getAlunos_id());
            } else { 
                ps.setInt(2, matriculaNoBanco.getAlunos_id());
            }
            
            if (matricula.getData_matricula() != null) {
                ps.setObject(3, matricula.getData_matricula());
            } else { 
                ps.setObject(3, matriculaNoBanco.getData_matricula());
            }
            
            if (matricula.getNota() != 0) {
                ps.setObject(3, matricula.getNota());
            } else { 
                ps.setObject(3, matriculaNoBanco.getNota());
            }          

            return true;
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }


    public boolean deleteMatriculaPorId(int id) {
        try {
            String sql = "DELETE FROM matriculas WHERE id=?";
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
