package Model.DAO;

import Model.Conexao;
import Model.Instrutor;
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
public class InstrutorDAO {
    private Connection conexao;

    public InstrutorDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    private boolean validaCreate(Instrutor instrutor){
        try {
            String sql = "SELECT * FROM instrutores WHERE email=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, instrutor.getEmail());            
            ResultSet rs = ps.executeQuery();
            
            if(!rs.next()) {
                sql = "SELECT * FROM instrutores WHERE login=?";
                ps = conexao.prepareStatement(sql);
                ps.setString(1, instrutor.getLogin());
                rs = ps.executeQuery();
                    if(!rs.next()){
                        return true;
                    }
            }      
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;           
    }
    
    public boolean create(Instrutor instrutor) {
        
        try {
            if(this.validaCreate(instrutor)){

            String sql = "INSERT INTO instrutores(nome, email, valor_hora, login, senha, experiencia) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setString(1, instrutor.getNome());
            ps.setString(2, instrutor.getEmail());
            ps.setInt(3, instrutor.getValor_hora());
            ps.setString(4, instrutor.getLogin());
            ps.setString(5, instrutor.getSenha());
            ps.setString(6, instrutor.getExperiencia());
            
            ps.executeUpdate();
            ps.close();
            return true;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
        
    }
    
    public Instrutor getInstrutorPorId(int id) {
        Instrutor instrutor = new Instrutor();
        try {
            String sql = "SELECT * FROM instrutores WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                instrutor.setId(rs.getInt("id"));
                instrutor.setNome(rs.getString("nome") );
                instrutor.setEmail(rs.getString("email") );
                instrutor.setValor_hora(rs.getInt("valor_hora") );
                instrutor.setLogin(rs.getString("login") );
                instrutor.setSenha(rs.getString("senha") );
                instrutor.setExperiencia(rs.getString("experiencia") );
            }

            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return instrutor;
    }
    
    public Instrutor getInstrutorPorLogin(String login) {
        Instrutor instrutor = new Instrutor();
        try {
            String sql = "SELECT * FROM instrutores WHERE login = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, login);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                instrutor.setId(rs.getInt("id"));
                instrutor.setNome(rs.getString("nome") );
                instrutor.setEmail(rs.getString("email") );
                instrutor.setValor_hora(rs.getInt("valor_hora") );
                instrutor.setLogin(rs.getString("login") );
                instrutor.setSenha(rs.getString("senha") );
                instrutor.setExperiencia(rs.getString("experiencia") );
            }
            else {
                instrutor = null;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return instrutor;
    }

    public ArrayList<Instrutor> getLista() {
        ArrayList<Instrutor> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM instrutores");
            while(rs.next()) {
                
                Instrutor instrutor = new Instrutor();
                
                instrutor.setId(rs.getInt("id"));
                instrutor.setNome(rs.getString("nome") );
                instrutor.setEmail(rs.getString("email") );
                instrutor.setValor_hora(rs.getInt("valor_hora") );
                instrutor.setLogin(rs.getString("login") );
                instrutor.setSenha(rs.getString("senha") );
                instrutor.setExperiencia(rs.getString("experiencia") );
                
                resultado.add(instrutor);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Instrutor instrutor) {
        try {
            Instrutor instrutorNoBanco = this.getInstrutorPorId(id);

            String sql = "UPDATE instrutores SET nome=?, email=?, valor_hora=?, login=?, senha=?, experiencia=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (!"".equals(instrutor.getNome())) {
                ps.setString(1, instrutor.getNome());
            } else { 
                ps.setString(1, instrutorNoBanco.getNome());
            }
            
            if (!"".equals(instrutor.getEmail())) {
                ps.setString(2, instrutor.getEmail());
            } else { 
                ps.setString(2, instrutorNoBanco.getEmail());
            }
            
            if (instrutor.getValor_hora() != 0) {
                ps.setInt(3, instrutor.getValor_hora());
            } else { 
                ps.setInt(3, instrutorNoBanco.getValor_hora());
            }
            
            if (!"".equals(instrutor.getLogin())) {
                ps.setString(4, instrutor.getLogin());
            } else { 
                ps.setString(4, instrutorNoBanco.getLogin());
            }
            
            if (!"".equals(instrutor.getSenha())) {
                ps.setString(5, instrutor.getSenha());
            } else { 
                ps.setString(5, instrutorNoBanco.getSenha());
            }
            if (!"".equals(instrutor.getExperiencia())) {
                ps.setString(6, instrutor.getExperiencia());
            } else { 
                ps.setString(6, instrutorNoBanco.getExperiencia());
            }
            ps.setInt(7, id);
            ps.executeUpdate();
            ps.close();
            return true;
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }


    public boolean deleteInstrutorPorId(int id) {
        try {
            String sql = "DELETE FROM instrutores WHERE id=?";
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
