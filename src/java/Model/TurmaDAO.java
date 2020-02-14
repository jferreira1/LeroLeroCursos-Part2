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
public class TurmaDAO {
    private Connection conexao;

    public TurmaDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    
    public boolean create(Turma turma) {
        
        try {
            String sql = "INSERT INTO turmas(instrutores_id, cursos_id, data_inicio, data_final, carga_horaria) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setInt(1, turma.getInstrutores_id());
            ps.setInt(2, turma.getCursos_id());
            ps.setObject(3, turma.getData_inicio());
            ps.setObject(4, turma.getData_final());
            ps.setInt(5, turma.getCarga_horaria());
            
            ps.executeUpdate();
            ps.close();
            return true;
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
        
    }
    
    public Turma getTurmaPorId(int id) {
        Turma turma = new Turma();
        try {
            String sql = "SELECT * FROM turmas WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                turma.setId(rs.getInt("id"));
                turma.setInstrutores_id(rs.getInt("instrutores_id") );
                turma.setCursos_id(rs.getInt("cursos_id") );
                turma.setData_inicio((Date) rs.getObject("data_inicio"));
                turma.setData_final((Date) rs.getObject("data_final") );
                turma.setCarga_horaria(rs.getInt("carga_horaria") );
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return turma;
    }

        public ArrayList<Turma> getLista() {
        ArrayList<Turma> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM turmas");
            while(rs.next()) {     
                Turma turma = new Turma();
                
                turma.setId(rs.getInt("id"));
                turma.setInstrutores_id(rs.getInt("instrutores_id") );
                turma.setCursos_id(rs.getInt("cursos_id") );
                turma.setData_inicio((Date) rs.getObject("data_inicio"));
                turma.setData_final((Date) rs.getObject("data_final") );
                turma.setCarga_horaria(rs.getInt("carga_horaria") );
                
                resultado.add(turma);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Turma turma) {
        try {
            Turma turmaNoBanco = new Turma();
            turmaNoBanco = this.getTurmaPorId(id);
            String sql = "UPDATE turmas SET instrutores_id=?, cursos_id=?, data_inicio=?, data_final=?, carga_horaria=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (!"".equals(turma.getInstrutores_id())) {
                ps.setInt(1, turma.getInstrutores_id());
            } else { 
                ps.setInt(1, turmaNoBanco.getInstrutores_id());
            }
            
            if (!"".equals(turma.getCursos_id())) {
                ps.setInt(2, turma.getCursos_id());
            } else { 
                ps.setInt(2, turmaNoBanco.getCursos_id());
            }
            
            if (turma.getData_inicio() != null) {
                ps.setObject(3, turma.getData_inicio());
            } else { 
                ps.setObject(3, turmaNoBanco.getData_inicio());
            }
            
            if (turma.getData_final() != null) {
                ps.setObject(3, turma.getData_final());
            } else { 
                ps.setObject(3, turmaNoBanco.getData_final());
            }
            
            if (turma.getCarga_horaria() != 0) {
                ps.setInt(5, turma.getCarga_horaria());
            } else { 
                ps.setInt(5, turmaNoBanco.getCarga_horaria());
            }
            return true;
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }


    public boolean deleteTurmaPorId(int id) {
        try {
            String sql = "DELETE FROM turmas WHERE id=?";
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
