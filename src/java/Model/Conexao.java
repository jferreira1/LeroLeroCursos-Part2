package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Conexao {
    private static Connection conexao = null;
    
    public static Connection criaConexao() throws SQLException {
        if ( conexao == null ) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");                 
                System.out.println("Driver foi carregado!");
                conexao = DriverManager.getConnection("jdbc:mysql://localhost:3308/escola?useTimezone=true&serverTimezone=UTC", "root", "");
                System.out.println("Conexão realizada com sucesso!");
            }
            catch( ClassNotFoundException e ) {
                System.out.println("Driver não foi localizado!");
            }
        }
        return conexao;
    }
}
