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
public class LoginDAO {
    private Connection conexao;

    public LoginDAO() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }


    public boolean validar(Login login) {
        try {
            
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
    }

    

    
}
