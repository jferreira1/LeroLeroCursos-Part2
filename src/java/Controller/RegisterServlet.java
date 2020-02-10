/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ferreira
 */
public class RegisterServlet extends HttpServlet {
    
    
    Connection conexao = null;
    
    @Override
    public void init() throws ServletException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/llc_db", "root", "");
        } catch (ClassNotFoundException ex){
            ex.printStackTrace();
            System.out.println("Não foi possível encontrar o Driver!");
        }catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println("Não foi possível conectar ao banco!");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String nome = request.getParameter("name");
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("password");
        
        try {
            String updateSQL = "INSERT INTO alunos(nome, email, login, senha) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = conexao.prepareStatement(updateSQL);
            
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, login);
            preparedStatement.setString(4, senha);
            
            preparedStatement.executeUpdate();
            preparedStatement.close();
            
        } catch (SQLException ex) {
            out.println("<h1>Erro de execucao de SQL" + ex.getMessage() + "</h1>");
        }
        

        
        
    }

    @Override
    public void destroy() {
        try {
            conexao.close();
        } catch (SQLException ex) {
            System.out.println("Não foi possível fechar ao banco!");
        }
    }
    
    


}
