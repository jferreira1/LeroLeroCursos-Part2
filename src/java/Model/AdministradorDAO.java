package Model;

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
public class AdministradorDAO {
    private Connection conexao;

    public AdministradorDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    
    private boolean validaCreate(Administrador administrador){
        try {
            String sql = "SELECT * FROM administrador WHERE login=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, administrador.getLogin());            
            ResultSet rs = ps.executeQuery();
            if(!rs.next()) {
                return true;
            }      
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;           
    }
    
    public boolean create(Administrador administrador) {
        
        try {
            if(this.validaCreate(administrador)){

            String sql = "INSERT INTO administrador(nome, login, senha) VALUES (?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setString(1, administrador.getNome());
            ps.setString(2, administrador.getLogin());
            ps.setString(3, administrador.getSenha());
            
            ps.executeUpdate();
            ps.close();
            return true;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
        
    }
    
    public Administrador getAdministradorPorId(int id) {
        Administrador administrador = new Administrador();
        try {
            String sql = "SELECT * FROM administrador WHERE id = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                administrador.setId(rs.getInt("id"));
                administrador.setNome(rs.getString("nome") );
                administrador.setLogin(rs.getString("login") );
                administrador.setSenha(rs.getString("senha") );
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return administrador;
    }
    
    public Administrador getAdministradorPorLogin(String login) {
        Administrador administrador = new Administrador();
        try {
            String sql = "SELECT * FROM administrador WHERE login = ?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, login);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                administrador.setId(rs.getInt("id"));
                administrador.setNome(rs.getString("nome") );
                administrador.setLogin(rs.getString("login") );
                administrador.setSenha(rs.getString("senha") );
            }
            
            else {
                administrador = null;
            }
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return administrador;
    }

    public ArrayList<Administrador> getLista() {
        ArrayList<Administrador> resultado = new ArrayList<>();
        try {            
            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM administrador");
            while(rs.next()) {
                
                Administrador administrador = new Administrador();
                administrador.setId(rs.getInt("id"));
                administrador.setNome(rs.getString("nome") );
                administrador.setLogin(rs.getString("login") );
                administrador.setSenha(rs.getString("senha") );
                
                resultado.add(administrador);
            }
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        // Retorna a lista de Contatos encontrados no banco de dados.
        return resultado;
    }
    
    public boolean update(int id, Administrador administrador) {
        try {
            Administrador administradorNoBanco = new Administrador();
            administradorNoBanco = this.getAdministradorPorId(id);
            String sql = "UPDATE administrador SET nome=?, login=?, senha=? WHERE id=?";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            if (!"".equals(administrador.getNome())) {
                ps.setString(1, administrador.getNome());
            } else { 
                ps.setString(1, administradorNoBanco.getNome());
            }
            
            if (!"".equals(administrador.getLogin())) {
                ps.setString(2, administrador.getLogin());
            } else { 
                ps.setString(2, administradorNoBanco.getLogin());
            }
            
            if (!"".equals(administrador.getSenha())) {
                ps.setString(3, administrador.getSenha());
            } else { 
                ps.setString(3, administradorNoBanco.getSenha());
            }           
            return true;
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return false;
    }


    public boolean deleteAdministradorPorId(int id) {
        try {
            String sql = "DELETE FROM administrador WHERE id=?";
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
